import 'package:flutter/material.dart';
import '/pages/home.dart';
import '/pages/message.dart';
import '/pages/setings.dart';
import '/pages/account.dart';

class PantallaBottomNavBar extends StatefulWidget {
  const PantallaBottomNavBar({Key? key}) : super(key: key);

  @override
  State<PantallaBottomNavBar> createState() => _PantallaBottomNavBarState();
}

class _PantallaBottomNavBarState extends State<PantallaBottomNavBar> {
  int _selectIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const MessagePage(),
    const SettingsPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Nav bar"),
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
