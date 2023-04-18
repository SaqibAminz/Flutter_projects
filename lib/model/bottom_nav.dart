import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  _BottomNavState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue[400],
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Completed',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        onTap: (int index) {
          setState(
            () {
              _selectedIndex = index;
              if (index == 1) {
                Navigator.pushReplacementNamed(context, '/ninjaCard');
              }
              if (index == 4) {
                Navigator.pushReplacementNamed(context, '/about_us');
              }
              if (index == 2) {}
              if (index == 3) {
                // const CompletedListWidget();
              }
            },
          );
        });
  }
}
