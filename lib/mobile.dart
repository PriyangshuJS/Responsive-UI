import 'package:flutter/material.dart';
import 'package:medi/hscreen.dart';

class mobileLayout extends StatelessWidget {
  const mobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(225, 188, 133, 163),
          title: const Text("Medi"),
        ),
        body: const HScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(225, 188, 133, 163),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(225, 188, 133, 163),
              ),
              label: 'Health',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(225, 188, 133, 163),
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
