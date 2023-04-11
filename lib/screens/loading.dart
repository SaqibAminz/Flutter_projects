import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_application1/model/home.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Image(
              image: AssetImage("assets/images/photo.png"),
              width: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Image Picker Pro',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower'),
          ),
          SizedBox(
            height: 200,
          ),
          SpinKitSpinningLines(
            color: Colors.green,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
