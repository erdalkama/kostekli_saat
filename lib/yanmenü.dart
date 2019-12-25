import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.blueGrey,
              child: Image.asset('assets/cilek.png'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('Kurucular'),
                    onTap: () {
                      Navigator.pushNamed(context, "/kurucu");
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('İletişim'),
                    onTap: () {
                      Navigator.pushNamed(context, "/iletisim");
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Ayarlar'),
                    onTap: () {
                      Navigator.pushNamed(context, "/ayarlar");
                    },
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
