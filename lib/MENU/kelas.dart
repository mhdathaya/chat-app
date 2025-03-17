import 'package:flutter/material.dart';
import 'package:siaksi_dosen/MENU/mahasiswa.dart';
import 'package:siaksi_dosen/MENU/matkul.dart';
import 'package:siaksi_dosen/utils/color.dart';

class pilihKelas extends StatefulWidget {
  const pilihKelas({super.key});

  @override
  State<pilihKelas> createState() => _pilihKelasState();
}

class _pilihKelasState extends State<pilihKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                              child:  IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Matakuliah(),
                                ),
                              );
                            },
                          ),
                            ),
                          ),
                          SizedBox(width: 30),
                          Text(
                            'Pilih Kelas',
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
                                  'Cari Kelas...',
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
                    'Daftar Kelas ',
                    style: TextStyle(fontSize: 20, fontFamily: 'PoppinsMedium'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Container(
                  width: 357,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Color(0xff2D336B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/grid.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Kelas A1',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          width: 57,
                          height: 19,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(onTap: () {
                              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Mahasiswa()),
            );
                            },
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Container(
                  width: 357,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Color(0xff2D336B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/grid.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Kelas A2',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          width: 57,
                          height: 19,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Container(
                  width: 357,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Color(0xff2D336B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/grid.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Kelas A3',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          width: 57,
                          height: 19,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Container(
                  width: 357,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Color(0xff2D336B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/grid.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Kelas A4',
                          style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          width: 57,
                          height: 19,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
