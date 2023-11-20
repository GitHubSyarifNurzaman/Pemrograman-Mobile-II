import 'package:flutter/material.dart';
import 'package:uts_mobile/Teman.dart';
import 'package:uts_mobile/add.dart';
import 'package:uts_mobile/home.dart';
import 'package:uts_mobile/message.dart';
import 'package:uts_mobile/profile.dart';

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    Teman(),
    Add(),
    Message(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("P.Mobile ui Tiktok"),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              backgroundColor: Colors.blue,
              selectedItemColor: Colors.redAccent,
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "Beranda"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people), label: "Teman"),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message), label: "Message"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "Profile"),
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
