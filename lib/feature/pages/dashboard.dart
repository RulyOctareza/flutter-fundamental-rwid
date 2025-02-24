import 'package:flutter/material.dart';
import 'package:flutter_rwid/feature/pages/home_page.dart';
import 'package:flutter_rwid/feature/pages/saved_page.dart';
import 'package:flutter_rwid/feature/pages/settings_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(_selectedIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SavedPage(),
    const SettingsPage(),
  ];
  final String name = 'Reza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapped,
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        children: _pages,
      ),
    );
  }
}
