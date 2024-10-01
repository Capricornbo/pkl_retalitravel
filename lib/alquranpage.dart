import 'package:flutter/material.dart';
import 'package:projek_pkl/bacaquranpage.dart'; // Pastikan file ini sudah ada

class AlQuranPage extends StatefulWidget {
  @override
  _AlQuranPageState createState() => _AlQuranPageState();
}

class _AlQuranPageState extends State<AlQuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman sebelumnya
          },
        ),
        title: Text('Al-Qur\'an'),
        backgroundColor: Color(0xFF673AB7), // Warna ungu
        elevation: 0,
      ),
      body: Column(
        children: [
          // Last Read Card
          Container(
            width: double.infinity, // Lebar penuh
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF9575CD), // Warna gradasi
                  Color(0xFF673AB7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last Read',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Image.asset(
                      'images/quran tasbee 1.png', // Ganti path sesuai dengan image di assets
                      height: 64,
                      width: 64,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'الفاتحة',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Ayah no. 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan fungsi untuk melanjutkan membaca
                  },
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF673AB7),
                  ),
                ),
              ],
            ),
          ),

          // Surah List
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildSurahTile(1, 'niat ihram', 'Surah details', 'نِيَّةُ الإِحْرَامِ'),
                _buildSurahTile(2, 'talbiyah', 'Surah details', 'لَبَّيْكَ اللّهُمَّ'),
                _buildSurahTile(3, 'doa masuk masjidil haram', 'Surah details', 'دُعَاءُ دُخُولِ الحَرَمِ'),
                _buildSurahTile(4, 'doa saat melihat kabah', 'Surah details', 'دُعَاءُ عِنْدَ رُؤْيَةِ الْكَعْبَةِ'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun tile surah
  Widget _buildSurahTile(
      int index, String name, String details, String arabicName) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE1BEE7), // Warna border ungu muda
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFE1BEE7), // Warna background ungu muda
          child: Text(
            '$index',
            style: TextStyle(
              color: Color(0xFF673AB7), // Warna teks ungu tua
            ),
          ),
        ),
        title: Text(name),
        subtitle: Text(details),
        trailing: Text(
          arabicName,
          style: TextStyle(
            fontFamily: 'Amiri', // Font Arab, pastikan sudah di-load
            fontSize: 18,
          ),
        ),
        onTap: () {
          // Navigasi ke halaman detail surah berdasarkan index
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacaAlQuran()), // Pastikan file ini ada
            );
          } else {
            // Bisa tambahkan logika navigasi untuk surah lain
          }
        },
      ),
    );
  }
}
