import 'package:flutter/material.dart';
import 'package:test_application1/model/home.dart';
import 'package:test_application1/screens/profile.dart';
import 'package:test_application1/screens/about_us.dart';
import 'package:test_application1/screens/insta.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/ninjaCard': (context) => const NinjaCard(),
        '/about_us': (context) => const AboutUs(),
        '/instaImg': (context) => const InstaImg(),
      },
      home: const HomeScreen(),
    ));
