import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCreditCard(),
            SizedBox(height: 20),
            Text('Transactions', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionCard(context, 'Dribbble', '-\$15.00', Colors.red),
                  _buildTransactionCard(context, 'House', '-\$50.00', Colors.blue),
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

  Widget _buildCreditCard() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.teal],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Total Balance',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),

            ],
          ),
          SizedBox(height: 10),
          Text(
            '\$25,000.40',
            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1234 **** **** 3456',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              Text(
                'Exp 09/23',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Client Name',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
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
          // Define action on transaction tap
        },
      ),
    );
  }
}
