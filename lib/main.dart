import 'package:flutter/material.dart';

import 'anasayfa.dart';
import 'ayarlar.dart';
import 'iletisim.dart';
import 'kurucuuyeler.dart';

void main() => runApp(AnaGiris());

class AnaGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF2F2C7F),
      ),
      home: MainPage(),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa" : (BuildContext context) => MainPage(),
  "/kurucu" : (BuildContext context) => KurucuPage(),
  "/ayarlar" : (BuildContext context) => AyarlarPage(),
  "/iletisim" : (BuildContext context) => IletisimPage(),
};