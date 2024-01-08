import 'package:flutter/material.dart';
import 'package:siakad/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> courses = [
    {
      'kode': '14620373',
      'mata kuliah': 'PENGOLAHAN BAHASA ALAMI DAN TEXT MINING',
      'kelas': 'K312',
      'waktu': 'Kamis, 09:30 - 12:00'
    },
    {
      'kode': '14620244',
      'mata kuliah': 'PENGOLAHAN CITRA DIGITAL*',
      'kelas': 'Q403 , Q301',
      'waktu': 'Jumat, 12:50 - 14:30 , Rabu, 12:00 - 13:40'
    },
    {
      'kode': '14620223',
      'mata kuliah': 'SISTEM KEAMANAN SIBER',
      'kelas': 'Q803',
      'waktu': '2:00 PM - 4:00 PM'
    },
    {
      'kode': '14620233',
      'mata kuliah': 'PENGEMBANGAN APLIKASI BERGERAK*',
      'kelas': 'L405',
      'waktu': 'Selasa, 09:30 - 12:00'
    },
    {
      'kode': '14620693 ',
      'mata kuliah': 'VISUALISASI DATA',
      'kelas': 'Q1005',
      'waktu': 'Senin, 07:00 - 09:30'
    },
    {
      'kode': '14620263',
      'mata kuliah': 'PENGEMBANGAN GAME',
      'kelas': 'I201',
      'waktu': 'Kamis, 12:00 - 14:30'
    },
    {
      'kode': '14620223',
      'mata kuliah': 'SISTEM APLIKASI MULTIMEDIA',
      'kelas': 'L403',
      'waktu': 'Selasa, 12:00 - 14:30 '
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
        title: Center(
          child: Column(
            children: [
              Text(
                "Program Studi Teknik Informatika",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "Universitas 17 Agustus 1945 Surabaya",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img/untag.png',
              height: 40.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                    '${courses[index]['kode']} - ${courses[index]['mata kuliah']}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kelas: ${courses[index]['kelas']}'),
                    Text('Waktu: ${courses[index]['waktu']}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
