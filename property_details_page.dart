import 'package:flutter/material.dart';

class PropertyDetailsPage extends StatelessWidget {
  final String title;

  PropertyDetailsPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://source.unsplash.com/800x400/?house'),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('2 Beds • 2 Baths • 1,200 sqft', style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 20),
            Text('This is a beautiful $title located in a prime area with access to essential amenities.', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}