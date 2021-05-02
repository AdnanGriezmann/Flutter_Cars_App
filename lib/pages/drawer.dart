import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Leo Messi'),
            accountEmail: Text('Messi10@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'images/a.jpg',
              ),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_in_picture_sharp),
            title: Text(
              'My Gallery',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/Gallery');
            },
          ),
          ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text(
              'Models',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
                Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/Model');
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text(
              'Bookmark',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
            height: 12.0,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Setting',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
               
              Navigator.of(context).pushNamed('/Setting');
            },
          ),
          SizedBox(height: height * 0.03),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'LogOut',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
               
              Navigator.of(context).pushNamed('/Signin');
            },
          ),
          SizedBox(height: height * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CopyRightCarsApp (C)',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
