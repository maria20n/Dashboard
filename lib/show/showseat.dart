import 'package:flutter/material.dart';
import 'package:flutter_application_1/edit/editseat.dart';
import 'package:flutter_application_1/list/seatlist.dart';
import 'package:get/get.dart';


class ShowSeat extends StatefulWidget {
  @override
  _ShowSeat createState() => _ShowSeat();
}

class _ShowSeat extends State<ShowSeat> {
  Widget build(BuildContext context) {
      seats()=>InkWell(
          onTap: () {
        Get.to(EditSeat(),);
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
                        Text("Seat Type: " +seat[0].type,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'com',
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Price : " + seat[0].price,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'com',
                            )),
                              Text("Available to book: " + seat[0].available,
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
          'Choose the Seat to edit',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
            child: Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ListView.separated(itemBuilder: (context,index)=>seats(),itemCount:21,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10),)
    
         
        )))


    );
  }
}
