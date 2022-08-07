import 'package:flutter/material.dart';
import 'package:flutter_application_1/add/addflight.dart';
import 'package:flutter_application_1/add/addhotel.dart';
import 'package:flutter_application_1/add/addroom.dart';
import 'package:flutter_application_1/add/addseat.dart';
import 'package:flutter_application_1/edit/editflight.dart';
import 'package:flutter_application_1/edit/edithotel.dart';
import 'package:flutter_application_1/edit/editseat.dart';
import 'package:flutter_application_1/show/flightbooks.dart';
import 'package:flutter_application_1/show/roomshow.dart';
import 'package:flutter_application_1/show/showseat.dart';
import 'package:get/get.dart';


class FlightAdmin extends StatefulWidget {
  @override
  _FlightAdmin createState() => _FlightAdmin();
}

class _FlightAdmin extends State<FlightAdmin> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Flight Admin',
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
                    onPressed: () {Get.to(AddFlight());},
                    child: Text("Add Flight",
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
                    onPressed: () {Get.to(EditFlight());},
                    child: Text("Edit Flight",
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
                    onPressed: () {Get.to(AddSeat());}, 
                    child: Text("Add Seat",
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
                    onPressed: () {Get.to(ShowSeat());},
                    child: Text("Edit Seat",
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
                    onPressed: () {Get.to(ShowFlightRes());},
                    child: Text("Chech Reservations",
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
