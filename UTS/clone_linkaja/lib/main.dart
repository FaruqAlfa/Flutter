import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 227, 227),
        body: ListView(
          children: [
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRGV834j6wqK7Iz6W8ZVlxi_eVIhj5BPWtdEwQGle7iDBPoafy6'),
                  fit: BoxFit.fill,
                ),
              ),
              margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16), // Jarak kiri, kanan, dan atas 2 cm
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 23, 0),
                          child: const Icon(
                            Icons.discount_outlined,
                            size: 30,
                          ),
                        ),
                        Container(
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //saldo
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    height: 110,
                    width: 500,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HI, MUKHAMAD FARUQ AL FAHMI',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              width: 135,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            2, 0, 0, 3),
                                        child: Text(
                                          'Saldo kamu',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Rp. 20.000',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            2, 0, 0, 3),
                                        child: Text(
                                          'Saldo Bonus',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Rp.0',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //isi Saldo
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 70,
              width: 500,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.monetization_on, size: 35),
                      ),
                      Text('Isi Saldo'),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.send, size: 35),
                      ),
                      Text('Kirim Uang'),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.confirmation_number, size: 35),
                      ),
                      Text('Kode Tiket'),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Icon(Icons.view_carousel, size: 35),
                      ),
                      Text('Semua'),
                    ],
                  ),
                ],
              ),
            ),

            //list
            Container(
              padding: const EdgeInsets.all(1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/wifi.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'Pulsa/Data',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/bolt.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'Listrik',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/insurance.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'BPJS',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/gamepad.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'mgames',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                ],
                              ),
                              const SizedBox(
                                  height: 1), // Spacer antara kolom pertama dan kedua
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/satellite.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'TV Kabel & \nInternet',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/drop.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'PDAM',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/credit-card.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'Kartu Uang \nElektronik',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Image.asset(
                                    'assets/images/more.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(height: 1), // Spacer antara gambar dan teks
                                Text(
                                  'Semua',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                                ],
                              ),
                            ],
                          ),
                        ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            const MyCarouselSlider(),
              const SizedBox(
                height: 30,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 40))
          ],
        ),
      bottomNavigationBar: const Navbar(),
      ),
    );
  }
}

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int _current = 0;
  final List<String> imgList = [
    'assets/images/slider/gb1.jpg',
    'assets/images/slider/gb2.jpg',
    'assets/images/slider/gb3.jpg',
    'assets/images/slider/gb4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList
              .map((item) => Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: 500,
                        height: 300,
                      ),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            top: 10,
            bottom: 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imgList.asMap().entries.map((entry) {
              final int index = entry.key;
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 5.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? const Color.fromARGB(228, 231, 43, 43)
                      : const Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}