import 'package:flutter/material.dart';
import 'package:flutter_application_1/add/addcountry.dart';
import 'package:flutter_application_1/add/addcoupons.dart';
import 'package:flutter_application_1/add/addplaces.dart';
import 'package:get/get.dart';

class NormalAdmin extends StatefulWidget {
  @override
  _NormalAdmin createState() => _NormalAdmin();
}

class _NormalAdmin extends State<NormalAdmin> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Admin',
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
                    onPressed: () {Get.to(AddPlaces());},
                    child: Text("Add places to visit",
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
                    onPressed: () {Get.to(AddCoupons());},
                    child: Text("Add Coupon",
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
                    onPressed: () {Get.to(AddCountry());},
                    child: Text("Add country ",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                  SizedBox(height: 30),
                
            ],
          ),
        ),
      ),
    );
  }

 
}
