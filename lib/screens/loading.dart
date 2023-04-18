import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:test_application1/screens/login.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Lottie.asset(
            'assets/gifs/task-list.json',
            width: 300,
            height: 300,
            fit: BoxFit.fill,
          )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Todo Provider Pro',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower'),
          ),
          const SizedBox(
            height: 200,
          ),
          const SpinKitSpinningLines(
            color: Color.fromARGB(255, 82, 177, 255),
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
