import 'package:flutter/material.dart';

class ayatdoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doa Umrah'),
      ),
      // ... rest of your code
   
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
                'Berikut adalah panduan niat dan bacaan yang perlu diingat selama melaksanakan umrah:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              
              // Niat Ihram
              Text(
                '1. Niat Ihram (dibaca saat berangkat dari miqot menuju Mekah)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: لَبَّيْكَ اللَّهُمَّ عُمْرَةً'),
              Text('Latin: Labbaika Allahumma \'Umratan'),
              Text('Arab: اللهم فَمَحِلَّيْ حَيْثُ حَبَسْتَنِيْ'),
              Text('Latin: Allahumma famahillay haitsuh habastani'),
              SizedBox(height: 16),

              // Bacaan Talbiyah
              Text(
                '2. Bacaan Talbiyah (dibaca sepanjang perjalanan dari Miqot menuju Masjidil Haram)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ, لَبَّيْكَ لَا شَرِيْكَ لَكَ لَبَّيْكَ, إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكُ لَا شَرِيْكَ لَكَ'),
              Text('Latin: Labbaika Allahumma labbaik, labbaika laa syariika laka labbaik, innal hamda wan-ni\'mata laka wal-mulk, laa syariika lak'),
              Text('Arab: لَبَّيْكَ إِلَهَ الْحَقِّ'),
              Text('Latin: Labbaika ilaaha al-haqqi'),
              Text('Arab: لَبَّيْكَ ذَا الْمَعَارِجِ .. لَبَّيْكَ ذَا الْفَوَاضِلِ'),
              Text('Latin: Labbaika dzal ma\'ariij, labbaika dzal fawadhili'),
              SizedBox(height: 16),

              // Do'a saat masuk Masjidil Haram
              Text(
                '3. Do’a saat masuk Masjidil Haram',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: أَعُوْذُ بِاللهِ الْعَظِيْمِ وَبِوَجْهِهِ الْكَرِيْمِ وَسُلْطَانِهِ الْقَدِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ, بِسْمِ اللهِ وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُوْلِ اللهِ, اَللَّهُمَّ افْتَحْ لِيْ أَبْوَابَ رَحْمَتِكَ'),
              Text('Latin: A\'uudzu billaahi al-\'aziimi wa biwajhihi al-kariimi wa sulthaanihi al-qadiimi minasy-syaithaani ar-rajiim, bismillaahi was-shalaatu was-salaamu \'ala rasuulillaah, Allahummaftah lii abwaaba rahmatika'),
              SizedBox(height: 16),

              // Do'a saat melihat Ka'bah
              Text(
                '4. Do’a saat melihat Ka\'bah',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: اَللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ فَحَيِّنَا رَبَّنَا بِالسَّلَامِ'),
              Text('Latin: Allahumma anta as-salaamu wa minka as-salaamu fahayyinaa rabbanaa bis-salaam'),
              SizedBox(height: 16),

              // Dzikir saat menghadapkan wajah ke Hajar Aswad
              Text(
                '5. Dzikir saat menghadapkan wajah ke Hajar Aswad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: بِسْمِ اللهِ .... اللهُ أَكْبَرُ'),
              Text('Latin: Bismillaahi... Allahu akbar'),
              SizedBox(height: 16),

              // Dzikir antara Rukun Yamani dan Hajar Aswad
              Text(
                '6. Dzikir antara Rukun Yamani dan Hajar Aswad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: رَبَّنَا آتِنَا فِى الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ'),
              Text('Latin: Rabbanaa aatinaa fid-dunyaa hasanah, wa fil-aakhirati hasanah, wa qinaa \'adzaaban-naar'),
              SizedBox(height: 16),

              // Dzikir saat menuju Maqam Ibrahim setelah selesai thawaf
              Text(
                '7. Dzikir saat menuju Maqam Ibrahim setelah selesai thawaf',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: وَاتَّخِذُوْا مِنْ مَقَامِ إِبْرَاهِيْمَ مُصَلَّى'),
              Text('Latin: Wattakhidzuu min-maqaami ibraahiima mushalla'),
              SizedBox(height: 16),

              // Do’a saat hendak minum Air Zam-zam
              Text(
                '8. Do’a saat hendak minum Air Zam-zam',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: اَللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَ رِزْقًا وَاسِعًا وَ شِفَاءً مِنْ كُلِّ دَاءٍ'),
              Text('Latin: Allahumma inni as-aluka \'ilman naafi\'an wa rizqan waasi\'an wa syifaa\'an min kulli daa\'in'),
              SizedBox(height: 16),

              // Dzikir saat menuju Shafa untuk mengawali Sa’i
              Text(
                '9. Dzikir saat menuju Shafa untuk mengawali Sa’i',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ .... أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ'),
              Text('Latin: Inna ash-shafaa wal-marwata min-sya\'aa\'irillaah... abda\'u bimaa bada-a-llaahu bih'),
              SizedBox(height: 16),

              // Dzikir saat berada di Shafa dan Marwah ketika melaksanakan Sa’i
              Text(
                '10. Dzikir saat berada di Shafa dan Marwah ketika melaksanakan Sa’i',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: اللهُ أَكْبَرُ , اللهُ أَكْبَرُ, اللهُ أَكْبَرُ ... لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيْكَ لَهُ, لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَ يُمِيْتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ. لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ, أَنْجَزَ وَعْدَهُ, وَ نَصَرَ عَبْدَهُ, وَهَزَمَ الْأَحْزَابَ وَحْدَهُ'),
              Text('Latin: Allahu akbar, Allahu akbar, Allahu akbar... Laa ilaaha illallaah wahdahu laa syariika lahu, lahu al-mulku wa lahu al-hamdu yuhyi wa yumitu wa huwa ala kulli syai-in qadiir. Laa ilaaha illallaahu wahdahu, anjaza wa’dahu, wa nasara ‘abdahu, wa hazama al-ahzaaba wahdahu'),
              SizedBox(height: 16),

              // Do’a saat menyelesaikan Sa’i
              Text(
                '11. Do’a saat menyelesaikan Sa’i',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: اَللَّهُمَّ إِنِّي أَسْأَلُكَ رِزْقًا حَلاَلًا وَعَمَلًا صَالِحًا وَأَسْأَلُكَ عَفْوَكَ وَأَسْأَلُكَ الْمَغْفِرَةَ'),
              Text('Latin: Allahumma inni as-aluka rizqan halaalan wa ‘amalan shaalihaan wa as-aluka ‘afwakah wa as-aluka al-maghfirah'),
              SizedBox(height: 16),

              // Do’a setelah Tahallul
              Text(
                '12. Do’a setelah Tahallul',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Arab: اَللَّهُمَّ اغْفِرْ لِي ذُنُوبِي وَتَجَاوَزْ عَنِّي أَخْطَائِي وَتَقَبَّلْ مِنِّي أَعْمَالِي'),
              Text('Latin: Allahumma ighfir li dzunuubi wa tajawaz ‘annii akhtaai wa taqabbal minnii a’malii'),
              SizedBox(height: 16),

              // Penutup
              Text(
                'Semoga Allah menerima amal ibadah kita. Aamin.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

