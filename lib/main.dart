import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/screens/mobile_screen/chat_screen.dart';
import 'package:whatsapp_clone/screens/mobile_screen/nav_screen.dart';
import 'package:whatsapp_clone/screens/mobile_screen/settings_screen.dart';
import 'package:whatsapp_clone/screens/web_screen/web_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,

      ),

      home: Responsive_Layout(mobileScreenLayout: nav_screen(), webScreenLayout: WebScreen()),

    );
  }
}

