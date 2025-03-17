import 'package:flutter/material.dart';
import 'package:siaksi_dosen/CHAT/homechat.dart';

class chat1 extends StatefulWidget {
  const chat1({super.key});

  @override
  State<chat1> createState() => _chat1State();
}

class _chat1State extends State<chat1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              children: [
                SizedBox(width: 30),
                Icon(Icons.arrow_back),
                SizedBox(width: 90),
                Text(
                  'CHAT SIAKSI',
                  style: TextStyle(
                    fontFamily: "PoppinsSemiBold",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:80),
            child: Image.asset('assets/images/chat.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              'WELCOME TO\nCHAT SIAKSI',
              style: TextStyle(
                fontFamily: "PoppinsBold",
                fontSize: 24,
                color: Color(0XFF2D336B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              'Mulai Chat dengan\n     CHAT SIAKSI',
              style: TextStyle(
                fontFamily: "PoppinsMedium",
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homechat()),
            );
              },
              child: Container(
                child: Align(alignment: Alignment.center,
                  child: 
                  Text(
                    'Mulai Chat',
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                width: 222,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xff333A4A),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
