import 'package:flutter/material.dart';
import 'package:siakad/login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String nim = "1462100095";
  String nama = "I Gusti Bagus Putra Pradwi";
  String tempatTanggalLahir = "Surabaya, 03 Februari 2003";
  double ipk = 3.75;

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
        decoration: BoxDecoration(
          color: Colors.grey[200], 
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                          'assets/img/mhs.jpg',
                        ), 
                      ),
                      SizedBox(height: 16),
                      buildInfoTile("NIM", nim),
                      buildInfoTile("Nama", nama),
                      buildInfoTile("Tempat/Tanggal Lahir", tempatTanggalLahir),
                      buildInfoTile("IPK", ipk.toString()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoTile(String title, String value) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Divider(),
      ],
    );
  }
}
