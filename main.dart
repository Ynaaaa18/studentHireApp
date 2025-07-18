import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(HomeEaseApp());

class HomeEaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeEase',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Color(0xFFF8F9FA),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.teal),
          titleTextStyle: TextStyle(color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}