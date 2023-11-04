import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // List data dengan gambar dan teks
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
                      ),// Isi dari kolom-kolom data lainnya
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
              const SizedBox( height: 1), // Spacer antara kolom pertama dan kedua
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
                        'TV Kabel &\n Internet',
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
                        'Kartu Uang \n Elektronik',
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
        const Padding(padding: EdgeInsets.only(bottom: 40)),
      ],
    );
  }
}

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({Key? key}) : super(key: key);

  @override
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
