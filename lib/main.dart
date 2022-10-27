import 'package:flutter/material.dart';
// import 'package:tabbar/screens/home_page.dart';
import 'package:tabbar/screens/tabar_widget.dart';
// import 'package:tabbar/screens/transparent_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabbar in flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      home: const TabarWidget(),
      // home: const TransParentAppBar()
      // home: const TabBarDemo(),
    );
  }
}
