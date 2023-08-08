import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:marketplace/api_model.dart';
import 'package:marketplace/discover_screen.dart';
import 'package:marketplace/filter_screen.dart';
import 'package:marketplace/home_screen.dart';

import 'api.dart';
import 'api_cubit/views/catfact_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOpstions = <Widget>[
    HomeScreen(),
    DiscoverScreen(),
    ApiScreen(),
    CatFactScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print('${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOpstions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //agar ketika klik icon, halaman mengikuti
        onTap: _onItemTapped,
        elevation: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0XFF35A29F),
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType
            .fixed, //karena iconnya < 5, jika > 5 menggunakan .shifthing
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.search),
              label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.catching_pokemon),
              activeIcon: Icon(Icons.catching_pokemon),
              label: 'API'),
          BottomNavigationBarItem(
              icon: Icon(Icons.catching_pokemon_outlined),
              activeIcon: Icon(Icons.catching_pokemon_outlined),
              label: 'API'),
        ],
      ),
    );
  }
}
