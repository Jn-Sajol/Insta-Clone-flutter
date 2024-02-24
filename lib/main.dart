import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen.dart';
import 'package:instagram_clone/responsive/screen_size.dart';
import 'package:instagram_clone/responsive/web_screen.dart';
import 'package:instagram_clone/ulits/colors.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    scaffoldBackgroundColor: mobileBackgroundColor,
    ),
    home: const ScreenSize(webScrin: WebScreen(), mobileScrin:MobileScreen())
    );
  }
}