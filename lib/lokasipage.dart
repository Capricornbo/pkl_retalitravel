import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Lokasipage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LokasiPage(),
    );
  }
}

class LokasiPage extends StatefulWidget {
  @override
  _LokasiPageState createState() => _LokasiPageState();
}

class _LokasiPageState extends State<LokasiPage> {
  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lokasi'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(-6.175392, 106.824437),
              zoom: 15,
            ),
            markers: {
              Marker(
                markerId: MarkerId('1'),
                position: LatLng(-6.175392, 106.824437),
                infoWindow: InfoWindow(title: 'Lokasi'),
              ),
            },
          ),

          // Overlay Image
          Positioned(
            bottom: 20, // Position the image near the bottom of the screen
            left: 20,
            right: 20, // Full-width image with padding on both sides
            child: Container(
              padding: EdgeInsets.all(10), // Padding around the image
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Semi-transparent background
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Lokasi Saat Ini',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'images/Rectangle.png', // Adjust the path if needed
                    width: 200, // Adjust the width
                    height: 150, // Adjust the height
                    fit: BoxFit.cover, // Ensure the image fills the space
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
