import 'package:flutter/material.dart';

import 'package:medi/web.dart';

import 'mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Desktop layout
            return const DesktopLayout();
          } else {
            // Mobile layout
            return const mobileLayout();
          }
        },
      ),
    );
  }
}
