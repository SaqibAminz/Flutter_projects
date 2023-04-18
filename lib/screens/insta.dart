import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InstaImg extends StatefulWidget {
  const InstaImg({super.key});

  @override
  State<InstaImg> createState() => _InstaImgState();
}

class _InstaImgState extends State<InstaImg> {
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
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: const Center(
          child: Image(
            height: 200,
            width: double.infinity,
            image: AssetImage('assets/images/com.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
