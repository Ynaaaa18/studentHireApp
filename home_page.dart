import 'package:flutter/material.dart';
import '../widgets/property_card.dart';
import '../widgets/app_drawer.dart';
import 'property_details_page.dart';

class HomePage extends StatelessWidget {
  final List<String> properties = [
    'Modern Condo',
    'Cozy Apartment',
    'Luxury Villa',
    'Studio Flat',
    'Beach House',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover Homes')),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: properties.length,
          itemBuilder: (context, index) {
            return PropertyCard(
              title: properties[index],
              location: 'Location #$index',
              price: '\$${(1000 + index * 200)} / mo',
              image: 'https://source.unsplash.com/600x400/?house,home,$index',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PropertyDetailsPage(title: properties[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}