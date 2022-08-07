import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EditTaxi extends StatefulWidget {
  @override
  _EditTaxi createState() => _EditTaxi();
}

class _EditTaxi extends State<EditTaxi> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Edit information',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 0, right: 16),
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              buildTextField("Price per Km", "20"),
              SizedBox(
                height: 35,
              ),
               RaisedButton(
                    color: Color(0xffFF9114),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.back();},
                    child: Text("Delete Taxi",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                   SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  SizedBox(width: 50),
                  RaisedButton(
                    onPressed: () {
                     
                    },
                    color: Color(0xffFF9114),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder) {
    // controller.text=placeholder;

    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
             labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
