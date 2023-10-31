import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text("BERITA TERBARU",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(width: 28),
                TextButton(
                  onPressed: () {},
                  child: const Text("PERTANDINGAN HARI INI",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(width: 10),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 320,
                  color: const Color.fromARGB(255, 214, 113, 230),
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Baca Berita Lainnya",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                Center(
                  child: Container(
                    width: 405,
                    height: 265,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ClipRect(
                          child: Container(
                            width: 405,
                            height: 220,
                            child: Image.network(
                              'https://cdns.klimg.com/bola.net/library/upload/21/2023/04/645x430/man-utd-everton-magu_9ac7618.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Harry Maguire Pahlawan Kemenangan MU',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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
                                            child: Image.network(
                                              "https://akcdn.detik.net.id/community/media/visual/2020/10/24/kevin-diks_169.jpeg?w=700&q=90",
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
                    Container(height: 12, color: Colors.white,),
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
                                child: Container(
                                  width: 408,
                                  height: 110,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 110,
                                            width: 186,
                                            child: Image.network(
                                              "https://cdns.klimg.com/bola.net/library/upload/21/2023/08/645x430/indo-u017_ff071f3.jpg",
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
                    Container(height: 12, color: Colors.white,),
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
                                child: Container(
                                  width: 408,
                                  height: 110,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 110,
                                            width: 186,
                                            child: Image.network(
                                              "https://cdn1-production-images-kly.akamaized.net/Gcf4mBV2BNQFoSb7H18y1zqdcj0=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4533314/original/015805500_1691660393-063_1579248841.jpg",
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
                                              "Liga Champions: Real Madrid Kehilangan 4 Pemain Inti dalam Lawatannya ke Markas Braga",
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
                                            "24 Oktober 2023",
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
                    Container(height: 12, color: Colors.white,),
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
                                child: Container(
                                  width: 408,
                                  height: 110,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 110,
                                            width: 186,
                                            child: Image.network(
                                              "https://cdns.klimg.com/bola.net/library/upload/21/2023/10/645x430/sir-bobby-charlton_69a31fb.jpg",
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
                    Container(height: 12, color: Colors.white,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}