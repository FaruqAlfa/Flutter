import 'package:flutter/material.dart';

class MySaldo extends StatelessWidget {
  const MySaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    const SizedBox(height: 10),
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
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(2, 0, 0, 3),
                                    child: Text(
                                      'Saldo kamu',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        'Rp. 20.000',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(2, 0, 0, 3),
                                    child: Text(
                                      'Saldo Bonus',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        'Rp.0',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
        const SizedBox(height: 1), // Spacer antara widget MySaldo dan Stack
        // ...kode CarouselSlider
      ],
    );
  }
}
