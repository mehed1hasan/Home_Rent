import 'package:flutter/material.dart';
import 'package:home_rent/pages/explore.dart';
import 'package:home_rent/pages/profile.dart';
import 'package:home_rent/pages/saved.dart';

import 'chat.dart';
import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {

  int currentScreeenIndex = 0;

  List<Widget> Screen = <Widget>[
    const Home(),
    const Explore(),
    const Chat(),
    const Saved(),
    const Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),

      body: Screen[currentScreeenIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentScreeenIndex,
          selectedItemColor: const Color(0xFF917AFD),
          unselectedItemColor: const Color(0xFF7D7F88),
          showUnselectedLabels: true,
          showSelectedLabels: true,

          unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),


          onTap: (index){
            setState(() {
              currentScreeenIndex = index;
            });
          },
          items: [
            /// home
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24, width: 24,
                'assets/home1.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                  height: 28, width: 28,
                  'assets/home2.png',
                  fit: BoxFit.cover,
              ),
              label: "Home",
              backgroundColor: const Color(0xffffffff),
            ),
            /// Explore
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24, width: 24,
                'assets/explore1.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28, width: 28,
                'assets/explore2.png',
                fit: BoxFit.cover,
              ),
              label: "Explore",
              backgroundColor: const Color(0xffffffff),
            ),
            /// Chat
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24, width: 24,
                'assets/chat1.jpg',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28, width: 28,
                'assets/chat2.png',
                fit: BoxFit.cover,
              ),
              label: "Chat",
              backgroundColor: const Color(0xffffffff),
            ),
            /// Saved
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24, width: 24,
                'assets/heart1.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28, width: 28,
                'assets/heart2.png',
                fit: BoxFit.cover,
              ),
              label: "Saved",
              backgroundColor: const Color(0xffffffff),
            ),
            /// Profile
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24, width: 24,
                'assets/profile1.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28, width: 28,
                'assets/profile2.png',
                fit: BoxFit.cover,
              ),
              label: "Profile",
              backgroundColor: const Color(0xffffffff),
            ),
          ],
        ),
      ),



    );
  }
}
