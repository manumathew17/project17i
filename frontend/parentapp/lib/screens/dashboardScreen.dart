import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentapp/styles/colors.dart';
import 'package:sizer/sizer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi",
              ),
              Text("User")
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 25.w,
                        width: 25.w,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: lightPrimary_2,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 1.0)
                            ])),
                    Container(
                        height: 25.w,
                        width: 25.w,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: lightPrimary_2,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 1.0)
                            ])),
                    Container(
                        height: 25.w,
                        width: 25.w,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: lightPrimary_2,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 1.0)
                            ]))
                  ],
                ),
                Container(
                    height: 25.w,
                    width: 100.w,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: lightPrimary_2,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              offset: Offset(4.0, 4.0),
                              spreadRadius: 1.0)
                        ]))
              ],
            ),
          )),
        ));
  }
}
