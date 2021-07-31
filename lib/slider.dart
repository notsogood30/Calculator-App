import 'package:flutter/material.dart';
import 'darkmode.dart';
import 'lightmode.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Colors.grey,
            child: DrawerHeader(
              child: Center(
                child: Text(
                  'CHANGE MODE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff374353),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text('DARK MODE ',
                style: TextStyle(
                  color: Colors.grey,
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return mydarkmode();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text('LIGHT MODE',
                style: TextStyle(
                  color: Colors.grey,
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return mylightmode();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
