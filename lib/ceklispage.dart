import 'package:flutter/material.dart';

class TugasPersiapanPage extends StatefulWidget {
  const TugasPersiapanPage({Key? key}) : super(key: key);

  @override
  State<TugasPersiapanPage> createState() => _TugasPersiapanPageState();
}

class _TugasPersiapanPageState extends State<TugasPersiapanPage> {
  List<Map<String, dynamic>> daftarTugas = [
    {
      "deskripsi": "Membuat Absensi Memastikan seluruh jamaah tergabung di dalam Grup Keberangkatan",
      "sudah": false,
      "tidakTerpenuhi": false,
      "dikerjakanRekan": false,
    },
    {
      "deskripsi": "Memperkenalkan diri dan menyimpan kontak seluruh jamaah",
      "sudah": false,
      "tidakTerpenuhi": false,
      "dikerjakanRekan": false,
    },
    {
      "deskripsi": "Memberikan pembekalan ulang teknis keberangkatan",
      "sudah": false,
      "tidakTerpenuhi": false,
      "dikerjakanRekan": false,
    },
    {
      "deskripsi": "Menginformasikan kepada jamaah titik kumpul pada saat di Bandara",
      "sudah": false,
      "tidakTerpenuhi": false,
      "dikerjakanRekan": false,
    },
    {
      "deskripsi": "Menyampaikan aturan perjalanan",
      "sudah": false,
      "tidakTerpenuhi": false,
      "dikerjakanRekan": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Persiapan Keberangkatan"),
      ),
      body: ListView.builder(
        itemCount: daftarTugas.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(daftarTugas[index]["deskripsi"]),
              subtitle: Row(
                children: [
                  Checkbox(
                    value: daftarTugas[index]["sudah"],
                    onChanged: (value) {
                      setState(() {
                        daftarTugas[index]["sudah"] = value ?? false; // Ensure value is not null
                      });
                    },
                  ),
                  Text("Sudah"),
                  // Add additional checkboxes as needed
                  // Example for "Tidak Terpenuhi":
                  Checkbox(
                    value: daftarTugas[index]["tidakTerpenuhi"],
                    onChanged: (value) {
                      setState(() {
                        daftarTugas[index]["tidakTerpenuhi"] = value ?? false;
                      });
                    },
                  ),
                  Text("Tidak Terpenuhi"),
                  Checkbox(
                    value: daftarTugas[index]["dikerjakanRekan"],
                    onChanged: (value) {
                      setState(() {
                        daftarTugas[index]["dikerjakanRekan"] = value ?? false;
                      });
                    },
                  ),
                  Text("Dikerjakan Rekan"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
