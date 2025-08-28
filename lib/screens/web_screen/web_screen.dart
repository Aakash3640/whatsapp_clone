
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/chat_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class WebScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161717),



          body: Row(
          children: [


            Container(
              height: double.infinity,
              width: 60,
              color: Color(0xff1d1f1f),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.update)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.change_circle_rounded)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.people_alt_outlined)),

                        SizedBox(
                          height: 20,
                          width: 35,
                          child: Divider(color: Colors.grey.shade800, thickness: 1),
                        ),

                         Image.asset('assets/images/meta.png',width: 40,height: 40,),

                      ],
                    ),

                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                        SizedBox(height: 20,),
                        Image.asset('assets/images/profile.png',width: 30,height: 30,),

                      ],
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Text('WhatsApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Row(children: [
                        Icon(Icons.add_comment_outlined),

                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

                        SizedBox(width: 20,),
                      ],)

                    ],),
                  ),

                  Expanded(child: chat_screen()),
                ],
              ),),

            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/backgroundImage.png'),fit: BoxFit.cover),
                ),
                
                child: Column(
                  children: [
                    Container(
                      color: Color(0xff161717),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile5.png'),
                          ),
                          title: Text("Me (You) "),
                          subtitle: Text("Message yourself"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10,),
                              Icon(Icons.more_vert),

                            ],
                          ),
                        )
                      ),
                    ),

                    // 🔹 Chat body (takes all remaining space)
                    Expanded(
                      child: Container(
                        // messages will go here
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff1d1f1f),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.add),
                                  SizedBox(width: 5,),
                                  Icon(Icons.emoji_emotions_outlined),
                                  SizedBox(width: 12,),

                                  Expanded(child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Type a message",
                                      hintStyle: TextStyle(color: Colors.white54),
                                      border: InputBorder.none,
                                    ),
                                  ),

                                  ),

                                  SizedBox(width: 8,),

                                  CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Color(0xff1d1f1f),
                                    child: Icon(Icons.mic),
                                  )
                                ],
                              ),

                            ),
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),



          ],
        )







    );
  }
}