import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zegocloud Video Call App',
      theme: ThemeData.dark(),
      home:HomePage(),
    );
  }
}

