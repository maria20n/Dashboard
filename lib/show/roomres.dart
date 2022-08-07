import 'package:flutter/material.dart';
import 'package:flutter_application_1/check/checkhotel.dart';
import 'package:flutter_application_1/list/roomcheck.dart';
import 'package:get/get.dart';

class ShowRoomRes extends StatefulWidget {
  @override
  _ShowRoomRes createState() => _ShowRoomRes();
}

class _ShowRoomRes extends State<ShowRoomRes> {
  Widget build(BuildContext context) {
    check() => InkWell(
          onTap: () {
            Get.to(
              CheckHotel(),
            );
          },
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.white,
              ),
              margin: EdgeInsets.fromLTRB(20, 15, 0, 10),
              child: AspectRatio(
                aspectRatio: 13 / 2,
                child: Container(
                  child: Row(children: <Widget>[
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text("Date: " + roomcheck[0].date,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 50),
                            Text("Room Type: " + roomcheck[0].roomtype,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text("Duration of stay: " + roomcheck[0].duration,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 50),
                            Text("price: " + roomcheck[0].price,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              )),
        );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF9114),
          centerTitle: true,
          title: Text(
            'Choose the room to check',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Center(
            child: Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ListView.separated(
                      itemBuilder: (context, index) => check(),
                      itemCount: 21,
                      separatorBuilder: (context, index) => Divider(
                          color: Colors.black26, endIndent: 10, indent: 10),
                    )))));
  }
}
