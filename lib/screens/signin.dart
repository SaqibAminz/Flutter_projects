import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigningIn extends StatefulWidget {
  const SigningIn({
    super.key,
  });

  @override
  State<SigningIn> createState() => _SigningInState();
}

class _SigningInState extends State<SigningIn> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 65, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Please Enter Details',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'First Name',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Last Name',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Username or Gmail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || !value.endsWith('@gmail.com')) {
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
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              Navigator.pushReplacementNamed(context, '/home');
                            });
                          }
                        },
                        icon: const Icon(Icons.arrow_circle_right),
                        label: const Text(
                          'Sign Up',
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
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      icon: Image.asset('assets/images/facebook.png'),
                      onPressed: () {},
                      label: const Text('Facebook'),
                      style: ElevatedButton.styleFrom(
                        // Use style property to define the button style
                        backgroundColor: Colors
                            .blue[400], // Set the desired background color
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
                    text: 'If you already have an account ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'LogIn',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
