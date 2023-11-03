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
        backgroundColor: const Color.fromARGB(255, 228, 227,
            227), // Ubah warna latar belakang body menjadi abu-abu
        body: ListView(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/premium-vector/cityscape-white-background-building-perspective-modern-building-city-skyline-city-silhouette-business-center-vector-illustration-flat-design_51530-2883.jpg'),
                fit: BoxFit.fill,
                opacity: 160,
              ),
            ),
            margin: EdgeInsets.fromLTRB(12, 12, 0, 0),
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
                  margin: EdgeInsets.fromLTRB(200, 0, 0, 0),
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
            child: Stack(children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                height: 110,
                width: 500,
                alignment:
                    Alignment.topLeft, // Mengatur teks di sebelah atas kiri
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(
                      20), // Menambahkan border radius sebesar 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
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
                    SizedBox(height: 10), // Spacer between name and white boxes
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          width: 135,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white, // Kotak putih pertama
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 0, 0, 3),
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
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 5), // Beri jarak antara teks dan ikon
                                        IconButton(
                                          icon: Image.asset('assets/images/next.png'), // Ganti dengan path gambar ikon Anda
                                          onPressed: () {
                                            // Aksi saat ikon ditekan
                                          },
                                          iconSize: 1, // Sesuaikan ukuran ikon
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            
                          ),
                           // Tambahan teks atau widget di dalam kotak putih pertama
                        ),
                        
                        SizedBox(width: 10),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white, // Kotak putih kedua
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // Tambahan teks atau widget di dalam kotak putih kedua
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
