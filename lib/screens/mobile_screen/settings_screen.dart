

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/value.dart';

class settings_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(onPressed: (){

          Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: Text("Settings"),
        actions: [
          IconButton(
           onPressed: (){},
            icon: Icon(Icons.search),
          ),
        ],
        
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Divider(color: Colors.black,thickness: 2,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              title: Text("AK"),
                subtitle: Text("Kya"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.qr_code,color: Colors.green,),
                    SizedBox(width: 15),
                    Icon(Icons.add_circle_outline_rounded,color: Colors.green,),
                  ],
                ),
              ),
            ),

            Divider(color: Colors.black,thickness: 2,),

            Column(
              children: List.generate(appallvalues.settingtitle.length, (index){

                return ListTile(
                  leading:  CircleAvatar(
                    backgroundColor: backgroundColor,
                    radius: 25,
                    child: appallvalues.settingicon[index],
                  ),
                  title: Text(appallvalues.settingtitle[index]),
                  subtitle: Text(appallvalues.settingsubtitle[index]),

                );

              }),
            ),

            Divider(color: Colors.grey[500],thickness: 1,),


          ],
        ),
      ),


    );
  }
}