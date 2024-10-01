import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projek_pkl/Subscription%20plans.dart';
import 'package:projek_pkl/agendapage.dart';
import 'package:projek_pkl/agendaumroh.dart';
import 'package:projek_pkl/alquranpage.dart';
import 'package:projek_pkl/bacaquranpage.dart';
import 'package:projek_pkl/ceklispage.dart';
import 'package:projek_pkl/detailhaji.dart';
import 'package:projek_pkl/doapagee.dart';
import 'package:projek_pkl/homepage.dart';
import 'package:projek_pkl/introslider2.dart';
import 'package:projek_pkl/kontentpage.dart';
import 'package:projek_pkl/lokasipage.dart';
import 'package:projek_pkl/main.dart';
import 'package:projek_pkl/profileduapage.dart';
import 'package:projek_pkl/profilepage.dart';
import 'package:projek_pkl/tugaspage.dart';
import 'package:projek_pkl/procedurepage.dart';
import 'qr_view_example.dart';
import 'package:projek_pkl/ayatdoa.dart';


void main() {
  runApp(HomePageApp());
}

class HomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page App',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
      routes: {
      '/doa': (context) => AlQuranPage(),
  '/bimbinganIbadah': (context) => BacaAlQuran(),
  '/naskah': (context) => AlQuranPage(),
  '/prosedur': (context) => TaskScreen(),
  '/kontent': (context) => AgendaPage(),
  '/lokasi': (context) => LokasiPage(),
  '/profile': (context) => MyProfilePage(),
 '/description': (context) => AgendaUmroh(
  namaMaskapai: 'Garuda Indonesia',
  namaPenerbangan: 'GA123',
  namaHotel: 'Hotel XYZ',
  agenda: [
    {'kegiatan': 'Keberangkatan', 'tanggal': '10 Juli 2024', 'waktu': '08:00'},
    {'kegiatan': 'Tiba di Mekkah', 'tanggal': '11 Juli 2024', 'waktu': '12:00'},
    // Tambahkan agenda lain sesuai kebutuhan
  ],
)

      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopContainer(),
            _buildMainContent(context),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hei ery',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Welcome to StayIn',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopContainer() {
    final List<String> imgList = [
      'images/banner.jpeg',
      'images/baner.jpeg',
      'images/umroh.jpeg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 0,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        height: 150,
      ),
      items: imgList
          .map(
            (item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          _buildIconGrid(context),
          _buildListView(),
        ],
      ),
    );
  }

  Widget _buildIconGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          _iconWithText(
            Icons.menu_book,
            'Doa-doa',
            () {
              Navigator.pushNamed(context, '/doa'); 
            },
          ),
          _iconWithText(
            Icons.school,
            'Bimbingan Ibadah',
            () {
              Navigator.pushNamed(context, '/bimbinganIbadah');
            },
          ),
          _iconWithText(
            Icons.description,
            'Naskah',
            () {
              Navigator.pushNamed(context, '/naskah');
            },
          ),
          _iconWithText(
            Icons.rule,
            'Prosedur',
            () {
              Navigator.pushNamed(context, '/prosedur');
            },
          ),
          _iconWithText(
            Icons.content_copy,
            'Kontent',
            () {
              Navigator.pushNamed(context, '/kontent');
            },
          ),
          _iconWithText(
            Icons.location_on,
            'Lokasi',
            () {
              Navigator.pushNamed(context, '/lokasi');
            },
          ),
         _iconWithText(
  Icons.description,
  'Description',
  () {
    Navigator.pushNamed(context, '/description');
  },
),
        ],
      ),
    );
  }

  Widget _buildListView() {
    final List<String> imgList = [
      'images/al-madinah.jpg',
      'images/baner.jpeg',
      'images/umroh.jpeg',
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: imgList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xFFE6E0F8), // Light purple color
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Image.asset(imgList[index], fit: BoxFit.cover),
          ),
        );
      },
    );
  }

  Widget _buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QRViewExample()), 
        );
      },
      child: Icon(Icons.qr_code, color: Colors.white),
      backgroundColor: Colors.purple,
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.white,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.purple),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()), 
                );
              },
            ),
           IconButton(
  icon: Icon(Icons.menu_book, color: Colors.grey),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AgendaUmroh(
          namaMaskapai: 'Garuda Indonesia',
          namaPenerbangan: 'GA123',
          namaHotel: 'Hotel XYZ',
          agenda: [
            {'kegiatan': 'Keberangkatan', 'tanggal': '10 Juli 2024', 'waktu': '08:00'},
            {'kegiatan': 'Tiba di Mekkah', 'tanggal': '11 Juli 2024', 'waktu': '12:00'},
            // Tambahkan agenda lain sesuai kebutuhan
          ],
        ),
      ),
    );
  },
),
  
          IconButton(
  icon: Icon(Icons.menu_book, color: Colors.grey),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => doapage()), // Ensure the class name is correct
    );
  },
),
             IconButton(
              icon: Icon(Icons.content_copy, color: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfilePage()), 
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileduaPage()), 
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconWithText(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFE6E0F8), // Light purple color
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 24, color: Colors.purple),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
