import 'package:buildin_widget/view/pertandingan.dart';
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
                // Tindakan yang>>>>>>> diambil saat tombol ditekan
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
