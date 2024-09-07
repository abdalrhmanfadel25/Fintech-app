import 'package:flutter/material.dart';
import 'transaction_details_page.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: ListView(
        children: [
          _buildTransactionCard(context, 'Adobe Illustrator', '-\$32.00', Colors.orange),
          _buildTransactionCard(context, 'Dribbble', '-\$15.00', Colors.yellow),
          _buildTransactionCard(context, 'Sony Camera', '-\$200.00', Colors.purple),
          _buildTransactionCard(context, 'Paypal', '+\$32.00', Colors.green),
        ],
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
