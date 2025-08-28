


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/value.dart';


class communities_screen extends StatelessWidget{

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: ListView(
        children: [

          //  new community
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [

               Stack(
                 clipBehavior: Clip.none,
                 alignment: Alignment.bottomRight,
                 children: [

                   Container(
                   width: 70,
                   height: 70,
                   decoration: BoxDecoration(
                     color: Colors.grey[700],
                     borderRadius: BorderRadius.circular(12)
                   ),
                     child: Icon(Icons.group,color: Colors.white70,size: 45,),

                 ),

                   Positioned(
                       bottom: -3,
                       right: -3,
                       child: CircleAvatar(
                         radius: 14,
                         backgroundColor: Colors.green,
                         child: Icon(Icons.add,color: Colors.black,size: 20,),
                       ))

              ]
               ),

                SizedBox(width: 15,),
                Text("New Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),

              ],
            ),
          ),

          Divider(
            color: Colors.black, // black line
            thickness: 10 ,        // thickness of line
                   // thickness of line
          ),


          // Different community
            appallvalues.buildcomminityItem(title: "Testers for 14 days only", subtitle: "Announcements", subtitle2: " You: Aug 27 reminder", time: "8:40"),
            appallvalues.buildcomminityItem(title: "Job Alerts4", subtitle: "Announcements", subtitle2: " Edusoft: Store Executive (2FM) Salary.....", time: "Yesterday"),
            appallvalues.buildcomminityItem(title: "Job Alerts4", subtitle: "Announcements", subtitle2: " Edusoft: Store Executive (2FM) Salary.....", time: "Yesterday"),
            appallvalues.buildcomminityItem(title: "Job Alerts4", subtitle: "Announcements", subtitle2: " Edusoft: Store Executive (2FM) Salary.....", time: "Yesterday"),


          Divider(
            color: Colors.black, // black line
            thickness: 10 ,        // thickness of line
            // thickness of line
          ),



        ],
      )
    );
  }
}