// import 'package:flutter/material.dart';
// import 'package:test_application1/model/home.dart';
import 'package:test_application1/screens/loading.dart';
import 'package:test_application1/screens/login.dart';
import 'package:test_application1/screens/profile.dart';
import 'package:test_application1/screens/about_us.dart';
import 'package:test_application1/screens/insta.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/loading',
//       routes: {
//         '/loading': (context) => const LoadingScreen(),
//         '/home': (context) => const HomeScreen(),
//         '/ninjaCard': (context) => const NinjaCard(),
//         '/about_us': (context) => const AboutUs(),
//         '/instaImg': (context) => const InstaImg(),
//       },
//       home: const HomeScreen(),
//     ));

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_application1/model/home.dart';
import 'package:test_application1/provider/todos.dart';
import 'package:test_application1/screens/signin.dart';
import 'package:test_application1/screens/forgot_pass.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Todo App';

  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/loading',
          routes: {
            '/loading': (context) => const LoadingScreen(),
            '/home': (context) => const HomeScreen(),
            '/ninjaCard': (context) => const NinjaCard(),
            '/about_us': (context) => const AboutUs(),
            '/instaImg': (context) => const InstaImg(),
            '/login': (context) => const LoginScreen(),
            '/signin': (context) => const SigningIn(),
            '/forgotpass': (context) => const FogetPass(),
          },
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xFFf6f5ee),
          ),
          home: const HomeScreen(),
        ),
      );
}
