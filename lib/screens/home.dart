import 'package:flutter/material.dart';
import 'package:new_app_ui/screens/settings_screen.dart';
import 'package:new_app_ui/screens/study_screen.dart';

import 'earning_screen.dart';
import 'invite_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _myIndex = 0;
  var _pages = [
    StudyScreen(),
    EarningScreen(),
    InviteScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _myIndex = index;
          });
        },
        currentIndex: _myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_sharp),
            label: "Balance",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4),
            label: "Invite Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(50),
      //   child: CusAppBar(
      //     containerHeight: 200,
      //     title: 'hello',
      //     leading: Icon(Icons.add),
      //     containerColor: Colors.red,
      //   ),
      // ),
      // appBar: AppBar(
      //   title: const Text("My Studies"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.more_vert_rounded),
      //     ),
      //   ],
      // ),
      body: _pages[_myIndex],
    );
  }
}
