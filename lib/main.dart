import 'package:flutter/material.dart';

import 'drawer_screen.dart';

void main() {
  runApp(  const MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   DrawerScreen(title: appTitle),
    );
  }
}


