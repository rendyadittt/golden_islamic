import 'package:flutter/material.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/page/auth/authenticated.dart';
import 'package:golden_islamic/page/auth/signin_page.dart';
import 'package:golden_islamic/page/home/home_screen.dart';
import 'package:golden_islamic/routes.dart';

class HomePageParent extends StatefulWidget {
  @override
  _HomePageParentState createState() => _HomePageParentState();
}

class _HomePageParentState extends State<HomePageParent> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    AuthenticatedPageParent(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColor.backgroundColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profil',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: MyColor.greenColor,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
