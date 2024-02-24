import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen.dart';
import 'package:instagram_clone/responsive/screen_size.dart';
import 'package:instagram_clone/responsive/web_screen.dart';
import 'package:instagram_clone/ulits/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyD2_51sVTneUrEuTcEAHZ92f-r0vMPEkhM",
      appId: "1:296117653816:web:1fa64b113029beed68f1cd",
      messagingSenderId: "296117653816",
      projectId: "insta-clone-flutter-69490",
      storageBucket: "insta-clone-flutter-69490.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const ScreenSize(
            webScrin: WebScreen(), mobileScrin: MobileScreen()));
  }
}
