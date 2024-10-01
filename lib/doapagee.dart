import 'package:flutter/material.dart';

class doapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panduan Umrah'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Assalamualaikum Fahrizal, Tour Leader Kebanggaan Retali!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Puji dan syukur kita panjatkan kepada Allah Azzawa Jalla yang telah memberikan kita nikmat iman, islam, dan kesempatan untuk melaksanakan ibadah umrah.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Shalawat serta salam senantiasa tercurahkan kepada junjungan kita Nabi Muhammad Shollallahu Alaihi wa Sallam, keluarga, sahabat, dan seluruh umatnya yang istiqamah mengikuti Sunnah-Nya hingga akhir zaman.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Panduan ini disusun sebagai panduan praktis bagi para Tour Leader yang akan mendampingi jamaah umrah dalam melaksanakan ibadah di Tanah Suci.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Seluruh tim memiliki peran penting dalam memastikan kelancaran dan kenyamanan perjalanan umrah. Dengan berjalan semua peran dengan baik, dapat membuat setiap jamaah melaksanakan ibadahnya dengan khusyuk dan sesuai dengan Sunnah.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Ibadah umrah merupakan salah satu bentuk ibadah yang sangat dianjurkan dalam Islam. Dalam Al-Quran, Allah Azza wa Jalla berfirman:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'وألقوا الحج والعمرة لله',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                '"Dan sempurnakanlah ibadah haji dan umrah karena Allah."',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '(QS. Al-Baqarah: 196)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Dan Hadits menguatkan pentingnya ibadah umrah, sebagaimana Rasulullah Shollallahu Alaihi wa Sallam bersabda:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'الغمرة إلى العمرة كفارة لما بينهما والحج المبرور ليس له جزاء إلا الجنة',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                '"Umrah yang satu ke umrah yang lain adalah penghapus dosa di antara keduanya, dan haji yang mabrur tidak ada balasannya kecuali surga."',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '(HR. Bukhari dan Muslim)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Tugas utama seorang petugas yang baik adalah membantu melaksanakan ibadah di Tanah Suci hingga kembali ke tanah air.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'ALHAMDULILLAH BERHASIL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Dapatkan bimbingan di tanah air, serta laksanakan dengan baik.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Petugas juga bertanggung jawab untuk memberikan informasi yang akurat, mengatur jadwal kegiatan, mengatasi masalah yang mungkin timbul, serta mendampingi jamaah dalam setiap langkah perjalanan mereka.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Panduan ini mencakup berbagai aspek yang perlu dipahami oleh Tour Leader, termasuk persiapan administrasi, manajemen waktu, pemahaman fiqih umrah, hingga etika dan adab selama di Tanah Suci. Dengan memahami dan menerapkan panduan ini, diharapkan para Tour Leader dapat menjalankan tugasnya dengan baik dan profesional, sehingga membantu jamaah meraih umrah yang mabrur dengan perjalanan yang terkesan.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Semoga Allah Azza wa Jalla senantiasa memberikan kemudahan dan keberkahan dalam setiap langkah kita. Aamiin.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Siap Melayani Tamu Allah?!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Mengganti primary dengan backgroundColor
                ),
                onPressed: () {},
                child: Text('SIAP!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
