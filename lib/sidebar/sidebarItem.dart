import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final IconData iconData;
  final String itemName;

  SideBarItem({@required this.iconData, @required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            this.iconData,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            this.itemName,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
