import 'package:flutter/material.dart';
import 'package:flutter_application_1/edit/edittable.dart';
import 'package:flutter_application_1/list/tablelist.dart';
import 'package:get/get.dart';

class ShowTable extends StatefulWidget {
  @override
  _ShowTable createState() => _ShowTable();
}

class _ShowTable extends State<ShowTable> {
  Widget build(BuildContext context) {
      tables()=>InkWell(
          onTap: () {
        Get.to(EditTable());
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
                        Text("Table Type: " +table[0].type,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'com',
                              fontWeight: FontWeight.bold,
                            )),
                        Text("people can sit: " + table[0].fit,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'com',
                            )),
                              Text("Available to book: " + table[0].available,
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
          'Choose the table to edit',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
            child: Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ListView.separated(itemBuilder: (context,index)=>tables(),itemCount:21,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10),)
    
         
        )))


    );
  }
}
