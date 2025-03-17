import 'package:flutter/material.dart';

class Pengisiankrs extends StatefulWidget {
  const Pengisiankrs({super.key});

  @override
  State<Pengisiankrs> createState() => _PengisiankrsState();
}

class _PengisiankrsState extends State<Pengisiankrs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Pengisian KRS',
          style: TextStyle(fontFamily: "PoppinsSemiBold", color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Container(width: 500, height: 2, color: const Color(0xffA6A7A8)),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 366,
              height: 51,
              decoration: BoxDecoration(
                color: Color(0xff4E6694),
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(width: 500, height: 2, color: const Color(0xffA6A7A8)),
          ),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 370,
                height: 119,
                decoration: BoxDecoration(
                  color: Color(0xff4E6694),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child:Container(
                        width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              
                            ),
                      )
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
    );
  }
}
