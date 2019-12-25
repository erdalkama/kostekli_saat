import 'package:flutter/material.dart';

class AyarlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfec8d8),
      appBar: AppBar(
        title: Text('Ayarlar'), centerTitle: true, backgroundColor: new Color(0xFF957dad),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300.0,
            width: double.maxFinite,
          )
        ],
      ),
    );
  }
}