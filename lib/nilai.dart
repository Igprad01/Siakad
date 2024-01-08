import 'package:flutter/material.dart';
import 'package:siakad/login.dart';

class Nilai extends StatefulWidget {
  const Nilai({Key? key}) : super(key: key);

  @override
  State<Nilai> createState() => _NilaiState();
}

class _NilaiState extends State<Nilai> {
  List<Map<String, String>> nilaiList = [
    {
      "Kode MK": "14620173",
      "Nama MK": "ADMINISTRASI JARINGAN",
      "Semester": "4",
      "Nilai Angka": "9",
      "Nilai Huruf": "B"
    },
    {
      "Kode MK": "14620083",
      "Nama MK": "ARSITEKTUR DAN ORGANISASI KOMPUTER *",
      "Semester": "2",
      "Nilai Angka": "10.5",
      "Nilai Huruf": "AB"
    },
    {
      "Kode MK": "000802",
      "Nama MK": "BAHASA INDONESIA",
      "Semester": "1",
      "Nilai Angka": "7.5",
      "Nilai Huruf": "A-"
    },
    {
      "Kode MK": "14620352",
      "Nama MK": "BAHASA INGGRIS",
      "Semester": "4",
      "Nilai Angka": "8",
      "Nilai Huruf": "A"
    },
    {
      "Kode MK": "	14620213",
      "Nama MK": "ENTREPRENEURSHIP",
      "Semester": "5",
      "Nilai Angka": "11.25",
      "Nilai Huruf": "A-"
    },
    {
      "Kode MK": "14620382",
      "Nama MK": "ETIKA TEKNOLOGI INFORMASI",
      "Semester": "3",
      "Nilai Angka": "8",
      "Nilai Huruf": "A"
    },
    {
      "Kode MK": "14620063",
      "Nama MK": "GRAF DAN OTOMATA",
      "Semester": "2",
      "Nilai Angka": "9",
      "Nilai Huruf": "B"
    },
    {
      "Kode MK": "	14620204",
      "Nama MK": "GRAFIKA KOMPUTER*",
      "Semester": "4",
      "Nilai Angka": "15",
      "Nilai Huruf": "A-"
    },
    {
      "Kode MK": "14620123",
      "Nama MK": "INTERAKSI MANUSIA KOMPUTER",
      "Semester": "3",
      "Nilai Angka": "9.75",
      "Nilai Huruf": "B+"
    },
    {
      "Kode MK": "14620133",
      "Nama MK": "KECERDASAN ARTIFISIAL",
      "Semester": "3",
      "Nilai Angka": "9.75",
      "Nilai Huruf": "B+"
    },
    {
      "Kode MK": "14620194",
      "Nama MK": "KECERDASAN KOMPUTASIONAL",
      "Semester": "4",
      "Nilai Angka": "16",
      "Nilai Huruf": "A"
    },
    {
      "Kode MK": "14620144",
      "Nama MK": "MANAJEMEN BASIS DATA *",
      "Semester": "3",
      "Nilai Angka": "16",
      "Nilai Huruf": "A"
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Kode MK')),
            DataColumn(label: Text('Nama MK')),
            DataColumn(label: Text('Semester')),
            DataColumn(label: Text('Nilai Angka')),
            DataColumn(label: Text('Nilai Huruf')),
          ],
          rows: nilaiList.map((nilai) {
            return DataRow(
              cells: [
                DataCell(Text(nilai["Kode MK"] ?? "")),
                DataCell(Text(nilai["Nama MK"] ?? "")),
                DataCell(Text(nilai["Semester"] ?? "")),
                DataCell(Text(nilai["Nilai Angka"] ?? "")),
                DataCell(Text(nilai["Nilai Huruf"] ?? "")),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
