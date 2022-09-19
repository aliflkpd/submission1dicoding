import 'package:flutter/material.dart';
import 'package:submission1dicoding/pages/Profile.dart';
import 'package:submission1dicoding/pages/NftLists.dart';
import 'package:submission1dicoding/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyNFT',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screen = [
    const Home(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      // backgroundColor: Color.fromARGB(255, 255, 149, 0),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 253, 223, 193),
          unselectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 15,
          backgroundColor: Colors.black,
          iconSize: 20,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ]),
    );
  }
}
