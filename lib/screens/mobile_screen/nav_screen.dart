

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/chat_screen.dart';
import 'package:whatsapp_clone/screens/mobile_screen/update_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import '../../utils/value.dart';
import 'call_screen.dart';
import 'communities_screen.dart';

class nav_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => nav_screen_state();

}

class nav_screen_state extends State<nav_screen>{


  int selectedIndex = 0;

  late PageController pageController;

  final List<Widget> _screens = [
    chat_screen(),
    update_screen(),
    communities_screen(),
    call_screen()
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();

  }



  void _onItemTapped(int index) {
    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          appallvalues.titles[selectedIndex],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),
        ),
        actions: appallvalues.actions(context)[selectedIndex],
        backgroundColor: Colors.transparent,
      ),
      body: PageView(
        controller: pageController,
        children: _screens,
        onPageChanged: (index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed, // so all 4 items are visible
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green.shade700,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats",),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined),label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.phone_outlined),label: "Call"),

        ],



      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: appallvalues.floatingbutton[selectedIndex],
      )

    );
  }

}