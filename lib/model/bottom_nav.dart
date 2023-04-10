import 'package:flutter/material.dart';
import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_2),
            label: 'Profile',
            backgroundColor: Colors.green[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.image),
            label: 'Gallery',
            backgroundColor: Colors.green[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.camera_alt),
            label: 'Camera',
            backgroundColor: Colors.green[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.info_rounded),
            label: 'About',
            backgroundColor: Colors.green[400],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[800],
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
              if (index == 2) {
                // selectImage();
              }
            },
          );
        });

    // void _onItemTapped(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }
  }
}
