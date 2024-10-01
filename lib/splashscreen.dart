import 'package:flutter/material.dart';
import 'package:projek_pkl/login/models/loginpage.dart';
import 'package:projek_pkl/loginscreen.dart';

void main() => runApp(Splashscreen2());

class Splashscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenHome(),
    );
  }
}

class SplashScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Aksi ketika logo atau teks ditekan, arahkan ke halaman baru
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()), // ganti dengan halaman tujuan
                );
              },
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer shape
                      Transform.rotate(
                        angle: 3.14 / 4, // 45 degrees in radians
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF9C27B0), // Purple start
                                Color(0xFF673AB7), // Deep purple end
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Inner white shape
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            bottomLeft: Radius.circular(35),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ريتالي', // Arabic text for "Retail"
                    style: TextStyle(
                      fontFamily: 'Arabic Font', // Replace with your desired Arabic font
                      fontSize: 12,
                      color: Color(0xFF673AB7), // Deep purple color
                    ),
                  ),
                  Text(
                    'Retali',
                    style: TextStyle(
                      fontFamily: 'Roboto', // Or your preferred English font
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF673AB7), // Deep purple color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman berikutnya
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Welcome to the next screen!'),
      ),
    );
  }
}
