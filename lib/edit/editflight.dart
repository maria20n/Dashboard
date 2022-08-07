import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add/addseat.dart';

class EditFlight extends StatefulWidget {
  @override
  _EditFlight createState() => _EditFlight();
}

class _EditFlight extends State<EditFlight> {
  var days = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];

  TimeOfDay flight = TimeOfDay.now();
  TimeOfDay landing = TimeOfDay.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Edit flight informations',
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime1(context);
                  },
                  child: Text("Flight Take :"),
                ),
                Text(
                  "${flight.hour}:${flight.minute}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 30,
                ),
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime2(context);
                  },
                  child: Text("Flight Landing :"),
                ),
                Text(
                  "${landing.hour}:${landing.minute}",
                  style: TextStyle(fontSize: 16),
                ),
              ]),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 247,
                height: 50,
                child: ListView(
                  children: [
                    DropdownButtonFormField(
                        hint: Text('Change the day'),
                        decoration: InputDecoration(),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: days.map((String days) {
                          return DropdownMenuItem(
                            value: days,
                            child: Text(days),
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
             
            RaisedButton(
                    color: Color(0xffFF9114),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Get.back();},
                    child: Text("Delete Flight",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                   SizedBox(
                height: 50,
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

  _selectTime1(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: flight,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != flight) {
      setState(() {
        flight = timeOfDay;
      });
    }
  }

  _selectTime2(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: landing,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != landing) {
      setState(() {
        landing = timeOfDay;
      });
    }
  }

}
