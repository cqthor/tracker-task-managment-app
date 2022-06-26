import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  static const List<Widget> _pages = [
    Text('home'),
    Text('folder'),
    Text('add'),
    Text('chat'),
    Text('profile'),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedIndex)),
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
