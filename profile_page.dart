import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 40, backgroundColor: Colors.teal),
            SizedBox(height: 20),
            Text('Client Name', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Email: client@example.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                _showSnackBar(context, 'Edit Profile button clicked');
              },
              child: Text('Edit Profile', style: TextStyle(color: Colors.teal)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                _showSnackBar(context, 'Settings button clicked');
              },
              child: Text('Settings', style: TextStyle(color: Colors.teal)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                _showSnackBar(context, 'Log Out button clicked');
              },
              child: Text('Log Out', style: TextStyle(color: Colors.teal)),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
