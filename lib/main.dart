import 'package:flutter/material.dart';
import 'package:naskah/naskah_screen.dart'; // Mengimpor naskah_screen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pilihan Naskah',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: NaskahScreen(),
    );
  }
}
