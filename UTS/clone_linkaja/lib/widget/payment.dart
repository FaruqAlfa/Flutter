import 'package:flutter/material.dart';

class MyPayment extends StatelessWidget {
  const MyPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
