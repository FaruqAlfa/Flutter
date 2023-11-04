import 'package:flutter/material.dart';
import 'list.dart';
import 'navbar.dart';
import 'payment.dart';
import 'saldo.dart';

void main() => runApp(const MyDashboard());

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key});

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
            const MySaldo(),
            const MyPayment(),
            const MyList(),
          ],
      ),
      bottomNavigationBar: const Navbar()
      ),
    );
  }
}

