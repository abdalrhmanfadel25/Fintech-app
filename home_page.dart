import 'package:fintech_app/transaction_details_page.dart';
import 'package:flutter/material.dart';
import 'wallet_page.dart';
import 'notifications_page.dart';
import 'transactions_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning!', style: TextStyle(fontSize: 24)),
            Text('Fadel', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletPage()),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal, Colors.tealAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Balance', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10),
                      Text('\$25,000.40', style: TextStyle(color: Colors.white, fontSize: 24)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Wallet', style: TextStyle(color: Colors.white)),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Earnings', style: TextStyle(fontSize: 18)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransactionsPage()),
                    );
                  },
                  child: Text('See All', style: TextStyle(color: Colors.teal)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildEarningCard('Upwork', '\$3,000', Colors.red),
                _buildEarningCard('Freepik', '\$3,000', Colors.pink),
                _buildEarningCard('Envato', '\$2,000', Colors.blue),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transactions', style: TextStyle(fontSize: 18)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransactionsPage()),
                    );
                  },
                  child: Text('See All', style: TextStyle(color: Colors.teal)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionCard(context, 'Adobe Illustrator', '-\$32.00', Colors.orange),
                  _buildTransactionCard(context, 'Dribbble', '-\$15.00', Colors.yellow),
                  _buildTransactionCard(context, 'Sony Camera', '-\$200.00', Colors.purple),
                  _buildTransactionCard(context, 'Paypal', '+\$32.00', Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEarningCard(String title, String amount, Color color) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text(amount, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionCard(BuildContext context, String title, String amount, Color color) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on, color: color),
        title: Text(title),
        trailing: Text(amount, style: TextStyle(color: color)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransactionDetailsPage(title: title, amount: amount),
            ),
          );
        },
      ),
    );
  }
}
