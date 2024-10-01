import 'package:flutter/material.dart';
import 'package:projek_pkl/introslider2.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'mulai menggunakan email',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Jika validasi berhasil, lakukan aksi login
                  print('Login berhasil');
                  // Pindah ke halaman login lain
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroSlider()),
                  );
                }
              },
              child: Text('masuk'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Lakukan registrasi disini
                print('Registrasi');
              },
              child: Text('Belum punya akun? Daftar sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}

// LoginPage harus didefinisikan, sesuaikan dengan kelas halaman loginmu
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(child: Text('Selamat datang di halaman login')),
    );
  }
}
