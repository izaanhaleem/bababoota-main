import 'package:baba_boota/views/Categories/categories_screen.dart';
import 'package:baba_boota/views/Home/home_screen.dart';
import 'package:baba_boota/views/Profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> _pages = <Widget>[
      const HomeScreen(),
      const Categories(),
      const Icon(
        Icons.chat,
        size: 150,
      ),
      const Icon(
        Icons.chat,
        size: 150,
      ),
      const ProfileScreen()
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          mouseCursor: SystemMouseCursors.grab,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.grey,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.timelapse,
                color: Colors.grey,
              ),
              label: 'Home Deals',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'My Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Cart',
            ),
          ]),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
