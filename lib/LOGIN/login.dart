import 'package:flutter/material.dart';
import 'package:siaksi_dosen/CHAT/chat1.dart';
import 'package:siaksi_dosen/Service/auth_service.dart';
import 'package:siaksi_dosen/utils/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  void login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final authService = AuthService();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    try {
      final user = await authService.signInWithEmailPassword(email, password);
      if (user != null) {
        // Jika login berhasil, navigasi ke halaman kelas
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => chat1()),
        );
      } else {
        setState(() {
          _errorMessage = "Login gagal. Cek email dan password.";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Terjadi kesalahan: ${e.toString()}";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: BackgroundColor,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/logo.png"),
                      Padding(padding: const EdgeInsets.only(left: 10)),
                      Container(width: 3, height: 40, color: Colors.white),
                      Padding(padding: const EdgeInsets.only(left: 10)),
                      Text(
                        'SIAKSI\nDOSEN',
                        style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 40),
                    child: Text(
                      'SELAMAT\nDATANG',
                      style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: Text(
                          'SIAKSI DOSEN\nPLATFORM UTILITAS\nDOSEN SIAKSI',
                          style: TextStyle(
                            fontFamily: "PoppinsReguler",
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 340),
            child: Container(
              width: 600,
              height: 570,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 253, 253, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 30),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 30),
                    child: Text(
                      'Silahkan login dengan email dan password',
                      style: TextStyle(
                        fontFamily: "PoppinsReguler",
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'EMAIL',
                      style: TextStyle(
                        fontFamily: "PoppinsReguler",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "Masukkan email Anda",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'PASSWORD',
                      style: TextStyle(
                        fontFamily: "PoppinsReguler",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Masukkan password Anda",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  if (_errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        _errorMessage!,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 20),
                    child: Container(
                      width: 246,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xff689F99),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: _isLoading ? null : login,
                        child: _isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontFamily: "PoppinsBold",
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
