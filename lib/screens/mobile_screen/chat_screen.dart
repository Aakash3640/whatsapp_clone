import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import '../../utils/value.dart';

class chat_screen extends StatefulWidget {
  @override
  State<chat_screen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<chat_screen> {

  final List<String> filters = [
    "All",
    "Unread 99+",
    "Favorites",
    "Groups 17",
    "+",
  ];
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
  backgroundColor: Color(0xff161717), // web
  //       backgroundColor: backgroundColor, // phone


        body: ListView(
          children: [
            // search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ask Meta AI or Search",
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: webAppBarColor,
                  contentPadding: EdgeInsets.all(0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),


            SizedBox(height: 14,),
            // categories like all,unread and group etc
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              color: Color(0xff161717), // for web
              // color: backgroundColor, // phone
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.green.shade900.withOpacity(0.4) : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: webAppBarColor,
                          width: 1
                        ),
                      ),

                      child: Center(child: Text(filters[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: isSelected ? Colors.white : Colors.grey.shade300,),),),

                    ),
                  );
                },
              ),
            ),

            // all chats
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                color: Color(0xff161717), // for web
                // color: backgroundColor, // phone
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: appallvalues.profiletitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(radius: 24, backgroundImage: AssetImage(appallvalues.imagelist[index]),),
                      title: Text(appallvalues.profiletitle[index],style: TextStyle(fontSize: 18),),
                      subtitle: Text(appallvalues.lastmessage[index],style: TextStyle(fontSize: 14),),
                      trailing: Column(
                        children: [

                          Text(appallvalues.lastmessagetime[index]),

                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                            child: Text(appallvalues.pendingmessage[index],
                                style: TextStyle(fontSize: 12)),
                          ),
                        ],
                      )

                    );

                  },

                ),

              ),
            )

          ],

        ),












      ),
    );
  }
}
