import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zegocloud Video Call App',
      theme: ThemeData(
        primaryColor: Colors.brown.shade200,
        shadowColor: Colors.brown.withOpacity(.3),
      ),
      home: HomePage(),
    );
  }
}
