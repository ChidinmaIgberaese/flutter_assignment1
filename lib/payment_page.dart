import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Card Number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your card number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            const Text('CVV',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter CVV',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            const Text('Expiration Date',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'MM/YY',
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Handle payment logic here
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
