import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                            controller: email,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Username or Gmail',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !value.endsWith('@gmail.com')) {
                                return 'please enter valid emial';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.key_rounded),
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$%^&*(),.?":{}|<>]).{8,}$')
                                      .hasMatch(value)) {
                                return 'Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
                              } else {
                                return null;
                              }
                            },
                            
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.pushReplacementNamed(
                                        context, '/forgotpass');
                                  });
                                },
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.blueAccent),
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Container(
                              height: 40,
                              width: 225,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: ElevatedButton.icon(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      const SnackBar(content: Text('Loged In'));
                                      Navigator.pushReplacementNamed(
                                          context, '/home');
                                    }
                                  },
                                  icon: const Icon(Icons.arrow_circle_right),
                                  label: const Text(
                                    'Login',
                                    style: TextStyle(fontSize: 18),
                                  )),
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
                                width: 15,
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
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: RichText(
                                text: TextSpan(
                              text: 'If you don\'t have an account ',
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacementNamed(
                                          context, '/signin');
                                    },
                                ),
                              ],
                            )),
                          )
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
