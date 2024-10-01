import 'package:flutter/material.dart';

class Kontentpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OptionCard(
                number: '1',
                text: 'Before removing clothes',
              ),
              SizedBox(height: 16),
              OptionCard(
                number: '2',
                text: 'When wearing new clothes',
              ),
              SizedBox(height: 16),
              OptionCard(
                number: '3',
                text: 'After wearing Clothes',
              ),
              SizedBox(height: 16),
              OptionCard(
                number: '4',
                text: 'To be said to someone wearing\nnew clothes',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String number;
  final String text;

  OptionCard({required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xFFF2E7FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFD1B3F5),
            radius: 20,
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}