import 'package:flutter/material.dart';
import 'package:tracker/screens/add/add_screen.dart';

import 'package:tracker/screens/chat/chat_screen.dart';
import 'package:tracker/screens/home/body.dart';
import 'package:tracker/screens/profile/profile_screen.dart';
import 'package:tracker/screens/project/project_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  static const List<Widget> _pages = [
    HomeScreenBody(),
    ProjectScreen(),
    Text('add'),
    ChatScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      if (index == 2) {
        addBottomSheet();
      } else {
        _selectedIndex = index;
      }
    });
  }

  Future<dynamic> addBottomSheet() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return const AddScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xff3580FF),
        unselectedItemColor: const Color(0xff848A94),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_open), label: 'Folder'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 50),
            label: 'Add',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
