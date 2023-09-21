import 'package:application_project/screen/homeScreen.dart';
import 'package:application_project/screen/mylibrary.dart';
import 'package:application_project/screen/editprofile.dart';
import 'package:application_project/screen/setting.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNegativeBar extends StatefulWidget {
  @override
  _BottomNegativeBar createState() => _BottomNegativeBar();
  TabStyle _tabStyle = TabStyle.react;
}

class _BottomNegativeBar extends State<BottomNegativeBar> {
  int itemIndex = 0;
  List<Widget> widgetList = [
    Center(child: MyLibraryPage()),
    Center(child: HomeScreen()),
    Center(child: SettingPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList.elementAt(itemIndex),
      bottomNavigationBar: ConvexAppBar(
        activeColor: Color(0xfffef6eb),
        backgroundColor: Color(0xff1c6360),
        items: [
          TabItem(
            icon: Icons.account_circle,
            title: 'MyLibrary',
          ),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        initialActiveIndex: 0,
        onTap: (index) {
          setState(() {
            itemIndex = index;
            print(index);
          });
        },
      ),
    );
  }
}
