import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
        ),
        title: const Text(
          'Image Picker',
          style: TextStyle(
              fontFamily: 'IndieFlower',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              context == 1
                  ? Navigator.pop(context)
                  : Navigator.pushReplacementNamed(context, '/home');
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.topLeft,
          color: Colors.white,
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
              text: 'version 1.0.0 ',
              children: [
                TextSpan(text: '\nSixlogics'),
                TextSpan(text: '\nApp are Updated'),
                TextSpan(text: '\nCopyright 2023 CC Saqib Amin')
              ],
            ),
          )),
    );
  }
}
