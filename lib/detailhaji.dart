import 'package:flutter/material.dart';

class DetailHaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Haji'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Informasi Haji',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Nama Paket:'),
                        SizedBox(width: 10),
                        Text('Paket Haji Reguler'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Harga:'),
                        SizedBox(width: 10),
                        Text('Rp 25.000.000'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Durasi:'),
                        SizedBox(width: 10),
                        Text('14 hari'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Deskripsi Paket',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Paket haji reguler ini adalah paket yang paling populer di kalangan jemaah haji. Paket ini menawarkan fasilitas yang lengkap dan harga yang terjangkau.',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol ditekan
              },
              child: Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
