


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/value.dart';


class update_screen extends StatelessWidget{
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,


    body: Row(
      children: [

        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Status Section
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Status",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      appallvalues.buildStatusItem(label: 'Add status', imagePath: 'assets/images/profile2.png', isaddStatus: true),
                      appallvalues.buildStatusItem(label: 'AK', imagePath: 'assets/images/profile5.png'),
                      appallvalues.buildStatusItem(label: 'Karan', imagePath: 'assets/images/profile.png'),
                      appallvalues.buildStatusItem(label: 'vinay', imagePath: 'assets/images/profile3.png'),
                      appallvalues.buildStatusItem(label: 'ajay', imagePath: 'assets/images/profile4.png'),
                    ],
                  ),
                ),

                // Channels Header
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Channels",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: webAppBarColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Explore"),
                      ),
                    ],
                  ),
                ),

                // Channels List
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // let parent scroll
                  itemCount: appallvalues.channcels.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(appallvalues.imagelist[index]),
                      ),
                      title: Text(appallvalues.channcels[index],
                          style: TextStyle(fontSize: 17)),
                      subtitle: Text('Local news about traffic rules'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            index == 0 ? "Yesterday" : "8/${index + 1}/25",
                            style: TextStyle(color: Colors.green),
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                            child: Text('${index + 1}',
                                style: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),


      ],
    ),


    );
  }
}