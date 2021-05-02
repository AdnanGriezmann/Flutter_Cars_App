import 'package:cars_app/pages/Account.dart';
import 'package:cars_app/pages/Home_bttm.dart';
import 'package:cars_app/pages/Trending.dart';
import 'package:cars_app/pages/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [Homebtom(), Trending(), Account()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('CarsApp'),
        centerTitle: true,
        elevation: 4.2,
      ),
      body: IndexedStack(
      index: selectedIndex,
      children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4.3,      
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_outlined),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: changeTab,
      ),
    );
  }

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
