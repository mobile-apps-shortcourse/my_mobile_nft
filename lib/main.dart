import 'package:flutter/material.dart';
import 'package:nft_app/pages/auctionpage.dart';
import 'package:nft_app/descs/descriptionpage_one.dart';
import 'package:nft_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

 