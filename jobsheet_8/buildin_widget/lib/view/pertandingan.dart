import 'package:flutter/material.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
                // Tindakan yang ingin diambil saat tombol ditekan
              },
              child: Text(
                "BERITA TERBARU",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            SizedBox(width: 28),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyPertandingan()));
                // Tindakan yang diambil saat tombol ditekan
              },
              child: Text(
                "PERTANDINGAN HARI INI",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}

class MyPertandingan extends StatelessWidget {
  const MyPertandingan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertandingan Hari Ini'),
      ),
      body: Column(
        children: [
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
                          child: Image.asset(
                            'assets/images/gb4.jpg', // Ganti dengan path gambar Anda
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Apa Lo?, ga ada Pertandingan Hari ini, hmb',
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CombinedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyPertandingan(),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavWidget(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: CombinedWidget()));
}
