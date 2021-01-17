import 'package:flutter/material.dart';
import 'package:sidebar/sidebar/sidebarItem.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final _animationDuration = Duration(milliseconds: 500);

  var screenWidth;
  bool isclickedSidebar = false;

  void openSideBar() async {
    setState(() {
      this.isclickedSidebar = !this.isclickedSidebar;
    });
  }

  @override
  Widget build(BuildContext context) {
    this.screenWidth = MediaQuery.of(context).size.width;
    return AnimatedPositioned(
      duration: this._animationDuration,
      top: 0,
      curve: Curves.linear,
      bottom: 0,
      left: this.isclickedSidebar ? 0 : -this.screenWidth,
      right: this.isclickedSidebar ? 0 : this.screenWidth - 34,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  ListTile(
                    title: Text(
                      "Randika Viraj",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    subtitle: Text("randikavirajmax@gmail.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.perm_identity),
                      radius: 30,
                    ),
                  ),
                  Divider(
                    height: 64,
                    thickness: 1,
                    color: Colors.white,
                    endIndent: 20,
                    indent: 20,
                  ),
                  SideBarItem(
                    iconData: Icons.home,
                    itemName: "Home",
                  ),
                  SideBarItem(
                    iconData: Icons.bar_chart,
                    itemName: "Tanks",
                  ),
                  SideBarItem(
                    iconData: Icons.add,
                    itemName: "More",
                  ),
                  SideBarItem(
                    iconData: Icons.logout,
                    itemName: "Log Out",
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.8),
            child: Container(
              width: 38,
              height: 100,
              color: Colors.black,
              child: IconButton(
                icon: Icon(
                  this.isclickedSidebar ? Icons.cancel : Icons.menu,
                  color: Colors.white,
                ),
                onPressed: this.openSideBar,
              ),
            ),
          )
        ],
      ),
    );
  }
}

mixin StreamController {}
