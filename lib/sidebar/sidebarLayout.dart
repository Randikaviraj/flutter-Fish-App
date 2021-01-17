import 'package:flutter/material.dart';


import '../views/home.dart';
import 'sidebar.dart';

class SideBarLayout extends StatefulWidget {
  @override
  _SideBarLayoutState createState() => _SideBarLayoutState();
}

class _SideBarLayoutState extends State<SideBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Home(),
        SideBar(),
      ],
    );
  }
}