import 'package:flutter/material.dart';

class BacaAlQuran extends StatefulWidget {
  @override
  _BacaAlQuranState createState() => _BacaAlQuranState();
}

class _BacaAlQuranState extends State<BacaAlQuran> {
  int _surahIndex = 0;

  List<String> _surahList = [
    'Al-Fatihah',
    'Al-Baqarah',
    'Ali Imran',
    // tambahkan surah lainnya
  ];

  List<List<String>> _ayatList = [
    [
      'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
      'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
      'الرَّحْمَٰنِ الرَّحِيمِ',
      'مَالِكِ يَوْمِ الدِّينِ',
      'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
      'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
      'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
    ],
    [
      'الٓمٓ',
      'ذَٰلِكَ الْكِتَابُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًى لِّلْمُتَّقِينَ',
      'الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلَاةَ وَمِمَّا رَزَقْنَاهُمْ يُنفِقُونَ',
      // tambahkan ayat lainnya
    ],
    // tambahkan surah lainnya
  ];

  List<List<String>> _terjemahanList = [
    [
      'Dengan nama Allah yang Maha Pengasih lagi Maha Penyayang.',
      'Segala puji bagi Allah, Tuhan semesta alam.',
      'Maha suci Allah yang telah menurunkan Al-Quran kepada hamba-Nya.',
      'Maha suci Allah yang memiliki hari pembalasan.',
      'Hanya kepada-Mu kami menyembah dan hanya kepada-Mu kami meminta pertolongan.',
      'Tunjukkanlah kami jalan yang lurus.',
      'Jalan orang-orang yang telah Engkau anugerahkan nikmat kepada mereka, bukan jalan orang-orang yang dimurkai dan bukan pula jalan orang-orang yang sesat.',
    ],
    [
      'Alif Lam Mim.',
      'Kitab ini tidak ada keraguan padanya, petunjuk bagi orang-orang yang bertakwa.',
      'Orang-orang yang beriman kepada yang ghaib, mendirikan shalat, dan menafkahkan sebagian dari rezeki yang Kami anugerahkan kepada mereka.',
      // tambahkan terjemahan lainnya
    ],
    // tambahkan terjemahan lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baca Al-Quran'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Surah ${_surahList[_surahIndex]}',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: _ayatList[_surahIndex].length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display Arabic text
                    Text(
                      _ayatList[_surahIndex][index],
                      style: TextStyle(fontSize: 24, fontFamily: 'Arabic'),
                    ),
                    SizedBox(height: 8), // Space between Arabic text and translation
                    // Display the meaning
                    Text(
                      _terjemahanList[_surahIndex][index],
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 16), // Space between verses
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
