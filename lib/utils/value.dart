import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/settings_screen.dart';

import 'colors.dart';

class appallvalues {
  static const List<String> lastmessagetime = [
    "14:42",
    "11:03",
    "10:07",
    "9:40",
    "9:38",
    "8:51",
    "Yesterday",
    "Yesterday",
    "9/22/25",
    "2/20/25",
  ];

  static List<String> lastmessage = [
    "apk file",
    "okay..",
    "Latest product in stock.......",
    "🖼️ photo",
    "links",
    "Announcement",
    "🚫 this message was deleteed...",
    "next day",
    "good morning..",
    "🖼️ photo",
  ];

  static List<String> pendingmessage = [
    '6',
    '3',
    '2',
    '12',
    '9',
    '14',
    '4',
    '23',
    '2',
    '1',
  ];

  static List<String> channcels = [
    "My Chandigarh City",
    "Job Hiring",
    "TECHPLEMENT",
    "EazyBytes",
    "InterKotlin",
    "IT Course",
    "Life golas",
    "News",
    "Jokes",
    "Sports",
  ];

  static List<String> imagelist = [
    'assets/images/meta.png',
    'assets/images/profile.png',
    'assets/images/profile2.png',
    'assets/images/profile3.png',
    'assets/images/profile4.png',
    'assets/images/profile5.png',
    'assets/images/profile.png',
    'assets/images/profile2.png',
    'assets/images/logo.png',
    'assets/images/profile5.png',
  ];

  static List<String> profiletitle = [
    "Job Group",
    "Karan",
    "Lenskart",
    "Aman",
    "Rohit",
    "Vikas",
    "Sachin",
    "Guru",
    "SK",
    "VK",
  ];

  static List<String> profilesubtitle = [
    "August 9, 12:42",
    "August 8, 8:30",
    "August 7, 16:30",
    "August 4, 20:40",
    "August 5, 13:30",
    "July 23, 12:27",
    "July 15, 15:12",
    "July 2, 7:01",
    "July 1, 12:32",
    "June 2, 14:23",
  ];

  static const List<String> titles = [
    "WhatsApp",
    "Updates",
    "Communities",
    "Calls",
  ];

  static List<String> settingtitle = [
    'Account','Privacy','Avatar','Lists','Chats','Notifications','Storage & data','Accessibility','App language','Help','Invite a friend','App updates'
  ];
  static List<String> settingsubtitle = [
    'Security notification, change number','Block contacts, disappearing messages','Create, edit, profile photo','Manage people and ground',
    'Theme, wallpapers, chat history','Message , group & call tones','Network usage, auto-download','Increase contract, animation',"English (device's language)",
    'Help center, contact us, privacy policy','','',
  ];
  static List<Widget> settingicon = [
    Icon(Icons.key),
    Icon(Icons.lock_outline),
    Icon(Icons.person_2_outlined),
    Icon(Icons.contact_page),
    Icon(Icons.message_outlined),
    Icon(Icons.notifications_outlined),
    Icon(Icons.circle_outlined),
    Icon(Icons.accessibility),
    Icon(Icons.language),
    Icon(Icons.help_outline_outlined),
    Icon(Icons.people_alt_outlined),
    Icon(Icons.system_security_update_good),


  ];

  static List<List<Widget>> actions(BuildContext context) => [
    // Chats actions
    [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
      ),

      MenuAnchor(

        builder: (context, controller, child) {

          return IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              controller.isOpen ? controller.close() : controller.open();
            },
          );
        },
        menuChildren: [
          MenuItemButton(onPressed: (){},child: Text("New group                  ")),
          MenuItemButton(onPressed: (){},child: Text("New community              ")),
          MenuItemButton(onPressed: (){},child: Text("New broadcast              ")),
          MenuItemButton(onPressed: (){},child: Text("Linked devices             ")),
          MenuItemButton(onPressed: (){},child: Text("Starred                    ")),
          MenuItemButton(onPressed: (){},child: Text("Payment                    ")),
          MenuItemButton(onPressed: (){},child: Text("Read all                   ")),
          MenuItemButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => settings_screen()));
          }, child: Text("Settings                  ")),
        ],
      ),





    ],




    // Updates actions
    [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert, color: Colors.white),
      ),
    ],
    // Communities actions
    [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert, color: Colors.white),
      ),
    ],
    // Calls actions
    [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert, color: Colors.white),
      ),
    ],
  ];

  static List<List<Widget>> floatingbutton = [
    // chat screen floating button icon
    [
      FloatingActionButton.small(
        backgroundColor: webAppBarColor,
        onPressed: () {},
        child: Image.asset('assets/images/meta.png'),
      ),

      SizedBox(height: 15),

      FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: Icon(Icons.chat, color: Colors.black),
      ),
    ],

    // update screen floating button icon
    [
      FloatingActionButton.small(
        backgroundColor: webAppBarColor,
        child: Icon(Icons.edit),
        onPressed: () {},
      ),

      SizedBox(height: 25),
      FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt_outlined, color: Colors.black),
        onPressed: () {},
      ),
    ],
    // communities screen floating button icon
    [],
    // call screen floating button icon
    [
      FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add_ic_call_rounded, color: Colors.black),
        onPressed: () {},
      ),
    ],
  ];

  static Widget buildStatusItem({
    required String label,
    required String imagePath,
    bool isaddStatus = false,
  }) {
    if (isaddStatus) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer box with border
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: webAppBarColor,
                    border: Border.all(color: Colors.grey.shade700, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                // Profile image inside (centered)
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imagePath),
                ),

                // Add "+" only for "Add status"
                if (isaddStatus)
                  Positioned(
                    bottom: 45,
                    right: 20,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add, size: 18, color: Colors.black),
                    ),
                  ),

                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Outer box with border
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bgstatus.png'),
                    fit: BoxFit.fitHeight,
                    opacity: 0.8,
                  ),

                  // Blur layer
                  color: webAppBarColor,
                  border: Border.all(color: Colors.grey.shade700, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              // Profile image inside (centered)
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: isaddStatus
                        ? null
                        : Border.all(color: Colors.green, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),

              // Add "+" only for "Add status"
              if (isaddStatus)
                Positioned(
                  bottom: 45,
                  right: 20,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, size: 18, color: Colors.black),
                  ),
                ),

              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),
        ],
      ),
    );
  }

  static Widget buildcomminityItem({
    required String title,
    required String subtitle,
    required String subtitle2,
    required String time,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left icon box
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text(title.split(" ").first)),
              ),

              const SizedBox(width: 12),

              // Title text
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Divider goes OUTSIDE the row
        const Divider(color: Colors.grey, thickness: 1),

        Padding(
          padding: const EdgeInsets.only(left: 18, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff103529),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.campaign, size: 30),
              ),
              SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 4),
                    Text(
                      subtitle2,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 70, top: 30, bottom: 8),
          child: Row(
            children: [
              Icon(Icons.chevron_right, color: Colors.grey, size: 20),
              SizedBox(width: 5),
              Text("View all"),
            ],
          ),
        ),
      ],
    );
  }
}
