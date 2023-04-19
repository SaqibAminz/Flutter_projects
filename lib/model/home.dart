import 'package:test_application1/model/drawer.dart';
import 'package:flutter/material.dart';
import 'package:test_application1/main.dart';
import 'package:test_application1/screens/about_us.dart';
import 'package:test_application1/widget/add_todo_dialog_widget.dart';
import 'package:test_application1/widget/todo_list_widget.dart';
import 'package:test_application1/widget/completed_list_widget.dart';
import 'package:test_application1/pages/home_page.dart';
import 'package:test_application1/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const HomePage(),
      const TodoListWidget(),
      const CompletedListWidget(),
      const NinjaCard(),
      const AboutUs(),
    ];
    return Scaffold(
      appBar: selectedIndex == 0 ||
              selectedIndex == 1 ||
              selectedIndex == 2 // Show FAB only for TodoListWidget
          ? AppBar(
              title: const Text(MyApp.title),
              actions: [
                PopupMenuButton(
                    // add icon, by default "3 dot" icon
                    // icon: Icon(Icons.book)
                    itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                    ),
                  ];
                }, onSelected: (value) {
                  if (value == 0) {
                    Navigator.pushReplacementNamed(context, '/ninjaCard');
                  } else if (value == 1) {
                    Navigator.pushReplacementNamed(context, '/instaImg');
                  } else if (value == 2) {
                    Navigator.pushReplacementNamed(context, '/login');
                  }
                }),
              ],
            )
          : null,
      drawer: const my_Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Completed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline_rounded,
            ),
            label: 'About',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton:
          selectedIndex == 1 // Show FAB only for TodoListWidget
              ? FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.black,
                  onPressed: () => showDialog(
                    builder: (context) => const AddTodoDialogWidget(),
                    context: context,
                    // barrierDismissible: false,
                  ),
                  child: const Icon(Icons.add),
                )
              : null,
    );
  }
}
