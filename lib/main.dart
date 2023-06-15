import 'package:flutter/material.dart';

import './transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List <Transaction> transactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 69.99, date: DateTime.now(),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.amber,
              elevation: 5,
              child: Text('Chart!'),
            ),
          ),
          Card(
             color: Colors.amberAccent,
              elevation: 5,
            child: Text('Transactions!'),
          ),
          ,
        ],
      ),
    );
  }
}
