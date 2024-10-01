import 'package:flutter/material.dart';
import 'package:projek_pkl/loginscreen.dart';
import 'package:projek_pkl/procedurepage.dart';
import 'package:projek_pkl/splashscreen.dart';
import 'package:projek_pkl/tugaspage.dart';
import 'package:projek_pkl/kontentpage.dart';
import 'package:projek_pkl/homepage.dart';
import 'package:projek_pkl/loginpage.dart';
import 'package:projek_pkl/profilepage.dart';

import 'loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen2(), // Tanpa .new()
    );
  }
}
