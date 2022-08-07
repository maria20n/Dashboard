import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPlaces extends StatefulWidget {
  @override
  _AddPlaces createState() => _AddPlaces();
}

class _AddPlaces extends State<AddPlaces> {
  TimeOfDay open = TimeOfDay.now();
  TimeOfDay close = TimeOfDay.now();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Add place informations',
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
              Center(
                child: Stack(
                  children: [
                    Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/person.png')))),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Color(0xffFF9114),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Name", "Blah"),
              buildTextField("Location", "Syria-damascus-almalki"),
              buildTextField("pay or free", "free"),
              buildTextField("Description", "great place"),
              buildTextField("Category", "beach"),
              buildTextField("country", "damascus"),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                 SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime1(context);
                  },
                  child: Text("Open Time"),
                ),
               
                Text(
                  "${open.hour}:${open.minute}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 60,
                ),
                RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    _selectTime2(context);
                  },
                  child: Text("Close Time"),
                ),
               
                Text(
                  "${close.hour}:${close.minute}",
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
                    onPressed: () {Get.back();},
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
              ),
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
      initialTime: open,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != open) {
      setState(() {
        open = timeOfDay;
      });
    }
  }
    _selectTime2(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: close,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != close) {
      setState(() {
        close = timeOfDay;
      });
    }
  }
}
