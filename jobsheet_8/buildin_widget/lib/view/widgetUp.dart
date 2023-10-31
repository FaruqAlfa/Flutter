import 'package:flutter/material.dart';

class WidgetUp extends StatelessWidget {
  const WidgetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          'assets/images/gb1.jpeg', // Ganti dengan path gambar Anda
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Harry Maguire Pahlawan Kemenangan MU',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
            height:
                10), // Anda dapat menyesuaikan ukuran SizedBox sesuai kebutuhan
      ],
    );
  }
}
