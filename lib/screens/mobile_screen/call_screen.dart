




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/value.dart';


class call_screen extends StatelessWidget{

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

                  // top favorites + add favorite
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Favorites",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.heart_broken,color: Colors.black,),
                        ),
                        SizedBox(width: 15),
                        Text("Add Favorite",style: TextStyle(fontSize: 16),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Recent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: appallvalues.profiletitle.length,
                      itemBuilder: (ctx, index){
                      return ListTile(

                        leading: CircleAvatar(
                          backgroundImage: AssetImage(appallvalues.imagelist[index]),

                        ),
                        title: Text(appallvalues.profiletitle[index]),
                        subtitle: Text(appallvalues.profilesubtitle[index]),
                        trailing: Icon(Icons.call_outlined),
                      );

                  })

                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

