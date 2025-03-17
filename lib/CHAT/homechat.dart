import 'package:flutter/material.dart';
import 'package:siaksi_dosen/CHAT/chat2.dart';
import 'package:siaksi_dosen/Service/auth_service.dart';
import 'package:siaksi_dosen/Service/chat_service.dart';
import 'package:siaksi_dosen/user_tile.dart';

class Homechat extends StatelessWidget {
  Homechat({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  void logout(BuildContext context) async {
    await _authService.signOut();
    Navigator.pushReplacementNamed(context, '/login'); // Sesuaikan rute login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () => logout(context),
            ),
          ],
        ),
      ),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text("ERROR"));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        final String currentUserEmail = _authService.getCurrentUser()?.email ?? "";

        // Filter agar user yang sedang login tidak muncul
        final users = snapshot.data!
            .where((userData) => userData["email"] != currentUserEmail)
            .toList();

        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return _buildUserListItem(users[index], context);
          },
        );
      },
    );
  }

  Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context) {
    return UserTile(
      text: userData["email"],
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Chat2(
              receiverEmail: userData["email"],
              receiverID: userData["uid"],
            ),
          ),
        );
      },
    );
  }
}
