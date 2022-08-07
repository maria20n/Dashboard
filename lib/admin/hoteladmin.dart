import 'package:flutter/material.dart';
import 'package:flutter_application_1/add/addhotel.dart';
import 'package:flutter_application_1/add/addrest.dart';
import 'package:flutter_application_1/add/addroom.dart';
import 'package:flutter_application_1/add/addtable.dart';
import 'package:flutter_application_1/edit/edithotel.dart';
import 'package:flutter_application_1/edit/editrest.dart';
import 'package:flutter_application_1/show/roomres.dart';
import 'package:flutter_application_1/show/roomshow.dart';
import 'package:flutter_application_1/show/tableshow.dart';
import 'package:get/get.dart';


class HotelAdmin extends StatefulWidget {
  @override
  _HotelAdmin createState() => _HotelAdmin();
}

class _HotelAdmin extends State<HotelAdmin> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Hotel Admin',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 90, 10, 50),
            children: [
              SizedBox(
                height: 35,
              ),
          
              SizedBox(
                height: 35,
              ),
                RaisedButton(
                    color: Colors.grey[400],
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.to(AddHotel());},
                    child: Text("Add Hotel",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                  SizedBox(height: 30),
                   RaisedButton(
                    color: Colors.grey[400],
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.to(AddRoom());},
                    child: Text("Add Room",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                  SizedBox(height: 30),
                                     RaisedButton(
                    color: Colors.grey[400],
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.to(EditHotel());},
                    child: Text("Edit Hotel",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                  SizedBox(height: 30),
                  RaisedButton(
                    color: Colors.grey[400],
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.to(RoomShow());},
                    child: Text("Edit Room",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                   SizedBox(height: 30),
                  RaisedButton(
                    color: Colors.grey[400],
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.to(ShowRoomRes());},
                    child: Text("Check reservations",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
             
            ],
          ),
        ),
      ),
    );
  }

 
}
