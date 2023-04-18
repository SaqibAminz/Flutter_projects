import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 1,
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Center(
                    child: Text('Welcome Back Todo\'er',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                              decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Username or Gmail',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          )),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_circle_right),
                                  label: const Text('Login')),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                icon: Image.asset('assets/images/google.png'),
                                onPressed: () {},
                                label: const Text(
                                  'Google',
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton.icon(
                                icon: Image.asset('assets/images/facebook.png'),
                                onPressed: () {},
                                label: const Text('Facebook'),
                                style: ElevatedButton.styleFrom(
                                  // Use style property to define the button style
                                  backgroundColor: Colors.blue[
                                      400], // Set the desired background color
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
