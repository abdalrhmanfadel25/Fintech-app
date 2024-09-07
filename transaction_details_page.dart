import 'package:flutter/material.dart';

class TransactionDetailsPage extends StatelessWidget {
  final String title;
  final String amount;

  TransactionDetailsPage({required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: $title', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Amount: $amount', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Date: 01/01/2024', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Category: Subscription', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

