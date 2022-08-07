import 'package:flutter/material.dart';
import 'package:flutter_application_1/check/checkflight.dart';
import 'package:flutter_application_1/list/flightcheck.dart';
import 'package:get/get.dart';

class ShowFlightRes extends StatefulWidget {
  @override
  _ShowFlightRes createState() => _ShowFlightRes();
}

class _ShowFlightRes extends State<ShowFlightRes> {
  Widget build(BuildContext context) {
    check() => InkWell(
          onTap: () {
            Get.to(
              CheckFlight(),
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
                            Text("take off: " + flightcheck[0].takeoff,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 100),
                            Text("landing: " + flightcheck[0].landing,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text("sest type: " + flightcheck[0].seat,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'com',
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 50),
                            Text("period time: " + flightcheck[0].period,
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
            'Choose the flight to check',
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
