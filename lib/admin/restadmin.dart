import 'package:flutter/material.dart';
import 'package:flutter_application_1/add/addrest.dart';
import 'package:flutter_application_1/add/addtable.dart';
import 'package:flutter_application_1/edit/editrest.dart';
import 'package:flutter_application_1/show/tableres.dart';
import 'package:flutter_application_1/show/tableshow.dart';
import 'package:get/get.dart';


class RestAdmin extends StatefulWidget {
  @override
  _RestAdmin createState() => _RestAdmin();
}

class _RestAdmin extends State<RestAdmin> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Restaurant Admin',
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
                    onPressed: () {Get.to(AddRest());},
                    child: Text("Add Resturant",
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
                    onPressed: () {Get.to(AddTable());},
                    child: Text("Add Table",
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
                    onPressed: () {Get.to(EditRest());},
                    child: Text("Edit Restaurant",
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
                    onPressed: () {Get.to(ShowTable());},
                    child: Text("Edit Table",
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
                    onPressed: () {Get.to(ShowTableRes());},
                    child: Text("Check Reservations",
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
