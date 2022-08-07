import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CheckFlight extends StatefulWidget {
  @override
  _CheckFlight createState() => _CheckFlight();
}

class _CheckFlight extends State<CheckFlight> {
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
        body: Stack(
            children:[
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

                    )
                ),
                child:
                Text(
                  'Flight info:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w800,
                  ),
                ),

              ),
              Positioned(
                  top:110,
                  right: 35,
                  child: Container(

                    width: 330,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Emirates Airlines',
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Comfortaa',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(

                                children: [
                                  Text(
                                    'Take off',
                                    style:TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(
                                    '6:00 am',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 25,),

                                  Text(
                                    'Period',
                                    style:TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(
                                    '8 hours',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 120,),
                              Column(

                                children: [
                                  Text(
                                    'Landing',
                                    style:TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(
                                    '3:00 pm',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
 SizedBox(height: 25,),
                                      Text(
                                    'Seat type',
                                    style:TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(
                                    'buisness',
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 17,
                                    ),
                                  ),




                                ],
                              ),
                                 
                            ],
                          ),
                          SizedBox(height: 20,),
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
                  )
              ),

              Positioned(
                  top: 450,
                  right: 35,
                  child: Container(

                    width: 330,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffff9114),
                      borderRadius: BorderRadius.all(Radius.circular(30)),

                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text('SAVE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
              ),
            ]
        ));
  }
}
