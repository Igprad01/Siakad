import 'package:flutter/material.dart';
import 'package:siakad/home_screen.dart';
import 'package:siakad/nilai.dart';
import 'package:siakad/profile.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selectindex = 0;

  List<Widget> _screenlist = [Home(), Nilai(), Profile()];

  void screen(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenlist[_selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: _selectindex,
          onTap: screen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: 'nilai'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ]),
    );
  }
}
