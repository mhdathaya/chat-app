import 'package:flutter/material.dart';
import 'package:siaksi_dosen/MENU/kelas.dart';
import 'package:siaksi_dosen/utils/color.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  State<Mahasiswa> createState() => _MahasiswaState();
}

class _MahasiswaState extends State<Mahasiswa> {
  final List<String> daftarMahasiswa = [
    'Ifra Bilqis Fadilah',
    'Nawang Wulandari',
    'Novita Dwi Anggi',
    'Vina Khairunnisa Br Tarigan',
    'Ghaida Arzeiti',
    'Najwa Ceisya Aditya',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const pilihKelas(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Pilih Mahasiswa',
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
                              'Cari Mahasiswa...',
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
                'Daftar Mahasiswa',
                style: TextStyle(fontSize: 20, fontFamily: 'PoppinsMedium'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: daftarMahasiswa.length,
              itemBuilder: (context, index) {
                return MahasiswaCard(nama: daftarMahasiswa[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MahasiswaCard extends StatelessWidget {
  final String nama;

  const MahasiswaCard({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: 357,
        height: 110,
        decoration: BoxDecoration(
          color: Color(0xff2D336B),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Icon(Icons.person, color: Colors.white, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    nama,
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 313,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        'Input Nilai:',
                        style: TextStyle(
                          fontFamily: "PoppinsMedium",
                          fontSize: 12,
                          color: Color(0xff2D336B),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 151,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          child: Text(
                            'Silahkan Masukkan Nilai',
                            style: TextStyle(
                              fontFamily: "PoppinsLightItalic",
                              fontSize: 8,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 59,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: "PoppinsMedium",
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
