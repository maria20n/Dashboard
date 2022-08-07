import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CheckHotel extends StatefulWidget {
  @override
  _CheckHotel createState() => _CheckHotel();
}

class _CheckHotel extends State<CheckHotel> {
  var book = ['no', 'Done'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFF9114),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Get.back(),
            ),
          ),
        ),
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: 500,
            color: Colors.white70,
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Color(0xffff9114),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
            child: Text(
              'Room Reservation :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
              top: 110,
              right: 35,
              child: Container(
                width: 330,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '09-12-2022',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                           
                            ],
                          ),
                             SizedBox(
                                height: 35,
                              ),
                          Row(
                            children: [
                              Text(
                                'Room Type',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Single Room',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                             SizedBox(
                                height: 35,
                              ),
                          Column(
                            children: [
                              
                              Row(
                                children: [
                                  Text(
                                    'Duration of stay',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 20,
                                    ),
                                  ),
                           
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '3 days',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                                   ],
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'price',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 20,
                                    ),
                                  ),
                                
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              ],
                              ),
                               SizedBox(
                                height: 35,
                              ),
                                   
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 247,
                            height: 60,
                            child: DropdownButtonFormField(
                                hint: Text('Did the client came ? '),
                                decoration: InputDecoration(),
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: book.map((String book) {
                                  return DropdownMenuItem(
                                    value: book,
                                    child: Text(book),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  value = value as String;
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 550,
              right: 35,
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffff9114),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ]));
  }
}
