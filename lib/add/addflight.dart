import 'package:flutter/material.dart';
import 'package:flutter_application_1/edit/editflight.dart';
import 'package:flutter_application_1/edit/edittaxi.dart';
import 'package:get/get.dart';

class AddFlight extends StatefulWidget {
  @override
  _AddFlight createState() => _AddFlight();
}

class _AddFlight extends State<AddFlight> {
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
  var month = [
    'January',
    'February',
    'March',
    'April',
    ' May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  TimeOfDay flight = TimeOfDay.now();
  TimeOfDay duration = TimeOfDay.now();
  TimeOfDay landing = TimeOfDay.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Add The flight informations',
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
              buildTextField("Airport Name", "Damascus Airport"),
              SizedBox(
                width: 10,
              ),
              buildTextField("Airline Name", "Cham Wings"),
              SizedBox(
                width: 10,
              ),
              buildTextField("From", "syria"),
              SizedBox(
                width: 10,
              ),
              buildTextField("To", "london"),
              SizedBox(
                width: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime1(context);
                  },
                  child: Text("Flight Time :"),
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
                    _selectTime3(context);
                  },
                  child: Text("Flight Landing :"),
                ),
                Text(
                  "${landing.hour}:${landing.minute}",
                  style: TextStyle(fontSize: 16),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 247,
                height: 50,
                child: ListView(
                  children: [
                    DropdownButtonFormField(
                        hint: Text('Choose the day'),
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
                width: 247,
                height: 50,
                child: ListView(
                  children: [
                    DropdownButtonFormField(
                        hint: Text('Choose the Month'),
                        decoration: InputDecoration(),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: month.map((String month) {
                          return DropdownMenuItem(
                            value: days,
                            child: Text(month),
                          );
                        }).toList(),
                        onChanged: (value) {
                          value = value as String;
                        }),
                  ],
                ),
              ),
                SizedBox(
                height: 15,
              ),
               Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                   SizedBox(
                width: 10,
              ),
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime2(context);
                  },
                  child: Text("Flight Duration :"),
                ),
                   SizedBox(
                width: 15,
              ),
                Text(
                  "${duration.hour}:${duration.minute}",
                  style: TextStyle(fontSize: 16),
                ),
             
              ]),
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
      initialTime: duration,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != duration) {
      setState(() {
        duration = timeOfDay;
      });
    }
  }

   _selectTime3(BuildContext context) async {
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
