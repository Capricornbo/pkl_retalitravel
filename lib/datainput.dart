import 'package:flutter/material.dart';
import 'package:projek_pkl/homepage.dart';
import 'package:projek_pkl/homepage2.dart';

class DataInput extends StatelessWidget {
  const DataInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePageApp()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF0E7FF), // Light purple background
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
              ),
              child: const Icon(
                Icons.check,
                color: Color(0xFF8B00FF), // Purple checkmark
                size: 48.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
