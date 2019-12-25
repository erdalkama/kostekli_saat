import 'package:flutter/material.dart';
import 'package:kostekli_saat/kurucukart.dart';

List<String> kurucular = [
  "HAKAN BAKACAK",
  "ERDAL KAMA",
];

class KurucuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfec8d8),
      appBar: AppBar(
        title: Text('Kurucu Üyeler'),centerTitle: true, backgroundColor: new Color(0xFF957dad),
      ),
      body: Padding(
        padding: EdgeInsets.all(33.0),
        child: ListView.builder(
          itemCount: kurucular.length,
          itemBuilder: (BuildContext context, int pozisyon){
            return KurucuKart(
              kurucu: kurucular[pozisyon],
              );
          },
        ),
      ),
    );
  }
}