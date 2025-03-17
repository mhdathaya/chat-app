import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:siaksi_dosen/message.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 🔹 Mendapatkan daftar pengguna dari Firestore
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  // 🔹 Mengirim pesan antara dua pengguna
  Future<void> sendMessage(String receiverID, String message) async {
    try {
      final String currentUserId = _auth.currentUser!.uid;
      final String currentUserEmail = _auth.currentUser!.email!;
      final Timestamp timestamp = Timestamp.now();

      Message newMessage = Message(
        senderID: currentUserId,
        senderEmail: currentUserEmail,
        receiverID: receiverID,
        message: message,
        timestamp: timestamp,
      );

      // 🔍 Membuat chatroom ID berdasarkan ID yang diurutkan
      List<String> ids = [currentUserId, receiverID];
      ids.sort();
      String chatroomID = ids.join('_');

      debugPrint("Mengirim pesan ke chatroomID: $chatroomID");

      // 🔍 Simpan pesan ke Firestore
      await _firestore
          .collection("chat_rooms")
          .doc(chatroomID)
          .collection("messages")
          .add(newMessage.toMap());

      debugPrint("Pesan terkirim: ${newMessage.message}");
    } catch (e) {
      debugPrint("Gagal mengirim pesan: $e");
    }
  }

  // 🔹 Mendapatkan pesan antara dua pengguna secara real-time
  Stream<QuerySnapshot> getMessages(String userID, String otherUserID) {
    List<String> ids = [userID, otherUserID];
    ids.sort();
    String chatroomID = ids.join('_');

    debugPrint("Mengambil pesan dari chatroomID: $chatroomID");

    return _firestore
        .collection("chat_rooms")
        .doc(chatroomID)
        .collection("messages")
        .orderBy("timestamp", descending: false)
        .snapshots();
  }
}
