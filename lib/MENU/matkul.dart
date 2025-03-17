import 'package:flutter/material.dart';
import 'package:siaksi_dosen/MENU/kelas.dart';
import 'package:siaksi_dosen/utils/color.dart';

class Matakuliah extends StatefulWidget {
  const Matakuliah({super.key});

  @override
  State<Matakuliah> createState() => _MatakuliahState();
}

class _MatakuliahState extends State<Matakuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 196,
              decoration: BoxDecoration(
                color: BackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Pilih Mata Kuliah',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Container(
                        width: 366,
                        height: 51,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cari Mata Kuliah...',
                                style: TextStyle(
                                  fontFamily: "PoppinsLightItalic",
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              Icon(Icons.search),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),

                child: Text(
                  'Semester ',
                  style: TextStyle(fontSize: 20, fontFamily: 'PoppinsMedium'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.028,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 160,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff7886C7),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Semester 2',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 160,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff7886C7),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Semester 4',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 160,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff7886C7),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Semester 6',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),

                child: Text(
                  'Mata Kuliah',
                  style: TextStyle(fontSize: 20, fontFamily: 'PoppinsMedium'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'Rekayasa Perangkat\nLunak',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => pilihKelas(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 57,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Pilih',
                                      style: TextStyle(
                                        fontFamily: "PoppinsMedium",
                                        fontSize: 12,
                                        color: Color(0xff2D336B),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 50),
                          child: Text(
                            'Pemograman\nWeb2',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 50),
                          child: Text(
                            'Pemograman\nMobile 2',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 50),
                          child: Text(
                            'Penambangan\nData',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 20),
                          child: Text(
                            'Sistem Pendukung\nKeputusan',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 30),
                          child: Text(
                            'Sistem Interprise',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 50),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 20),
                          child: Text(
                            'Manajemen dan\nAdministrasi Data',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff2D336B),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Image.asset('assets/images/mk.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 50),
                          child: Text(
                            'Internet Untuk\nSegala',
                            style: TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70, top: 30),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 SKS',
                                    style: TextStyle(
                                      fontFamily: "PoppinsLight",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Container(
                                width: 57,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Pilih',
                                    style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      fontSize: 12,
                                      color: Color(0xff2D336B),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
