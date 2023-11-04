import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final currentRoute = ModalRoute.of(context)!.settings.name;

    if (currentRoute == '/history') {
      _currentIndex = 1;
    } else {
      _currentIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            onTap: (index) {
              if (index == 0) {
                Navigator.of(context).pushNamed('/home');
              } else if (index == 1) {
                Navigator.of(context).pushNamed('/history');
              }
            },
            items: [
              itemBar(Icons.home, "Home"),
              itemBar(Icons.history, "History"),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 28,
                  height: 28,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                label: "Pay",
              ),
              itemBar(Icons.inbox, "Inbox"),
              itemBar(Icons.switch_account, "Account"),
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem itemBar(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
