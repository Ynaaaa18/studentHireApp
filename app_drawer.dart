import 'package:flutter/material.dart';
import '../pages/profile_page.dart';
import '../pages/favorites_page.dart';
import '../pages/search_page.dart';
import '../pages/settings_page.dart';
import '../pages/about_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Text('HomeEase', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage())),
          ),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => FavoritesPage())),
          ),
          ListTile(
            title: Text('Search'),
            leading: Icon(Icons.search),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SearchPage())),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage())),
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info_outline),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AboutPage())),
          ),
        ],
      ),
    );
  }
}