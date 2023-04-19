import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FogetPass extends StatelessWidget {
  const FogetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
            onPressed: () {
              context == 1
                  ? Navigator.pop(context)
                  : Navigator.pushReplacementNamed(context, '/home');
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 54, 148),
      body: Center(
        child: Column(children: [
          Lottie.asset(
            'assets/images/thinking.json',
            width: 300,
            height: 300,
            fit: BoxFit.fill,
          ),
          const Text(
            'Please Try to Remember !',
            style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower'),
          ),
        ]),
      ),
    );
  }
}
