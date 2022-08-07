import 'package:flutter/material.dart';
import 'package:flutter_application_1/list/roomlist.dart';
import 'package:flutter_application_1/list/tablelist.dart';
import 'package:get/get.dart';

import '../edit/editroom.dart';

class RoomShow extends StatefulWidget {
  @override
  _RoomShow createState() => _RoomShow();
}

class _RoomShow extends State<RoomShow> {
  Widget build(BuildContext context) {
      rooms()=>InkWell(
          onTap: () {
        Get.to(EditRoom(),);
      },
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             // color: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(20, 15, 0, 10),
            child: AspectRatio(
              aspectRatio: 13 / 2,
          
            
              child: Container(
                  child: Row(children: <Widget>[
                 
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Room Type: " +room[0].type,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'com',
                              fontWeight: FontWeight.bold,
                            )),
                        Text("people can stay: " + room[0].fit,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'com',
                            )),
                              Text("Available to book: " + room[0].available,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'com',
                            )),
                      ],
                    ),
                  ]),
                ),)),
     );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Choose the room to edit',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
            child: Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ListView.separated(itemBuilder: (context,index)=>rooms(),itemCount:21,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10),)
    
         
        )))


    );
  }
}
