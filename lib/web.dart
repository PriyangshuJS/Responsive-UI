import 'package:flutter/material.dart';
import 'package:medi/hscreen.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 188, 133, 163),
        title: const Text("Medi"),
        actions: const [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
          ),
          SizedBox(width: 30),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          SizedBox(width: 30),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
          SizedBox(width: 30),
        ],
      ),
      body: const HScreen(),
    );
  }
}
