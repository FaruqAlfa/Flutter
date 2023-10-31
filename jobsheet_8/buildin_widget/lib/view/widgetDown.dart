import 'package:flutter/material.dart';

class MyWidgetDown extends StatelessWidget {
  const MyWidgetDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 150,
                      ),
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 1,
                            ),
                            Container(
                              color: Colors.white,
                              height: 148,
                              width: 408,
                              child: SizedBox(
                                width: 408,
                                height: 110,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 110,
                                          width: 186,
                                          child: Image.asset(
                                          'assets/images/gb1.jpeg', // Ganti dengan path gambar Anda
                                          fit: BoxFit.cover,
                                        ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.greenAccent)),
                                          height: 110,
                                          width: 204,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "Kevin Diks, Pemain Keturunan Indonesia yang Main Oke Lawan MU",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "25 Oktober 2023",
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
                    ],
                  ),
                  Container(height: 12, color: Colors.white),
                  // ... Penambahan stack-stack berita lainnya di sini
                  Stack(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 150,
                      ),
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 1,
                            ),
                            Container(
                              color: Colors.white,
                              height: 148,
                              width: 408,
                              child: SizedBox(
                                width: 408,
                                height: 110,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 110,
                                          width: 186,
                                          child: Image.asset(
                                          'assets/images/gb2.jpg', // Ganti dengan path gambar Anda
                                          fit: BoxFit.cover,
                                        ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.greenAccent)),
                                          height: 110,
                                          width: 204,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "Cek Fakta Timnas Indonesia Menjelang Piala Dunia U-17 2023",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "22 Oktober 2023",
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
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 150,
                      ),
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 1,
                            ),
                            Container(
                              color: Colors.white,
                              height: 148,
                              width: 408,
                              child: SizedBox(
                                width: 408,
                                height: 110,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 110,
                                          width: 186,
                                          child: Image.asset(
                                          'assets/images/gb3.jpg', // Ganti dengan path gambar Anda
                                          fit: BoxFit.cover,
                                        ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.greenAccent)),
                                          height: 110,
                                          width: 204,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "Kabar Duka, Legenda Manchester United dan Inggris Sir Bobby Charlton Meninggal Dunia",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "21 Oktober 2023",
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
