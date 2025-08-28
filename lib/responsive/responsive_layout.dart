

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/chat_screen.dart';
import 'package:whatsapp_clone/screens/web_screen/web_screen.dart';

class Responsive_Layout extends StatelessWidget{

  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  Responsive_Layout({required this.mobileScreenLayout, required this.webScreenLayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,contraints){

      if(contraints.maxWidth > 900){
        return webScreenLayout;
      }
      return mobileScreenLayout;

    });
  }
}


