import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCoupons extends StatefulWidget {
  @override
  _AddCoupons createState() => _AddCoupons();
}

class _AddCoupons extends State<AddCoupons> {
   var category = [
  
  'trip','Restaurant','Hotel'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Add Coupon informations',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          child: ListView(
            children: [
              SizedBox(
                height: 35,
              ),
              buildTextField("Name", "Coupons"),
              buildTextField("Price by pints", "30"),
              buildTextField("Price per Km", "20"),
              buildTextField("discount", "10"),

              SizedBox(
                height: 35,
              ),
               
              SizedBox(
                width: 247,
                height: 50,
                child: ListView(
                  children: [
                    DropdownButtonFormField(
                        hint: Text('Choose the Category'),
                        decoration: InputDecoration(),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: category.map((String category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          );
                        }).toList(),
                        onChanged: (value) {
                          value = value as String;
                        }),
                  ],
                ),
              ),

               SizedBox(
                height: 50,
              ),
               
              Row(
                children: [
                  SizedBox(width: 20),
                  RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.back();},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  SizedBox(width: 50),
                  RaisedButton(
                    onPressed: () {
                 Get.back();
                    },
                    color: Color(0xffFF9114),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Add",
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
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
             labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
