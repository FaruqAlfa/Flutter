import 'package:flutter/material.dart';


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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-vector/cityscape-white-background-building-perspective-modern-building-city-skyline-city-silhouette-business-center-vector-illustration-flat-design_51530-2883.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              margin: const EdgeInsets.fromLTRB(12, 12, 0, 0),
              child: Row(
                children: [
                  Container(
                    child: const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png'),
                      width: 70,
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
                    margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                          Image.asset(
                            'assets/images/wifi.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('Pulsa/Data'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/bolt.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('Listrik'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/insurance.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('BPJS'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/gamepad.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('mgames'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
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
                          Image.asset(
                            'assets/images/satellite.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('TV Kabel & \nInternet'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/drop.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('PDAM'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/credit-card.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('Kartu Uang \n Elektronik'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/more.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('Semua'),
                          SizedBox(height: 1), // Spacer antara ikon dan teks
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
