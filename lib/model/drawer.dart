import 'dart:io';

import 'package:flutter/material.dart';

class my_Drawer extends StatefulWidget {
  const my_Drawer({
    super.key,
  });

  @override
  State<my_Drawer> createState() => _my_DrawerState();
}

class _my_DrawerState extends State<my_Drawer> {
  TextStyle myStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.scaleDown,
            )),
            child: Column(
              children: const [
                SizedBox(
                  width: 55,
                ),
                CircleAvatar(
                  radius: 35,
                  child: Image(
                    image: AssetImage('assets/images/man.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Saqib Amin',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Saqib.amin@Sixlogics.com',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 74, 74, 74)),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                "Profile",
                style: myStyle,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/ninjaCard');
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.browse_gallery),
              title: Text(
                "From Gallery",
                style: myStyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(
                "From Camera",
                style: myStyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.image),
              title: Text(
                "From Instagram",
                style: myStyle,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/instaImg');
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.man),
              title: Text(
                "About Us",
                style: myStyle,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/about_us');
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: myStyle,
              ),
              onTap: () {
                exit(0);
              },
              tileColor: Colors.blue.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
