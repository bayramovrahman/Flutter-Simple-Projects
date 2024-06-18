import "package:burclar_app/data/burc_listesi.dart";
import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        cardColor: Colors.blue[800]
      ),
      home: BurcListesi(),
    );
  }
}