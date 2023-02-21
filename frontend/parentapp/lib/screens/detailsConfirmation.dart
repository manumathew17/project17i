import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentapp/styles/appStyles.dart';
import 'package:sizer/sizer.dart';

class DetailsConfirmation extends StatefulWidget {
  const DetailsConfirmation({super.key});

  @override
  State<DetailsConfirmation> createState() => _DetailsConfirmation();
}

class _DetailsConfirmation extends State<DetailsConfirmation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
        child: Container(
          height: 100.h,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Details",
                style: heading2,
              ),
              Text(
                "Please confirm ",
                style: heading6,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://picsum.photos/250?image=9')),
                    title: Text('Student name'),
                    subtitle:
                        Text('7th stansard | K V G COLLAGE OF ENGINEERING'),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                            onPressed: () => {},
                            style: textButtonNegativeStyle,
                            child: Text("Invalid detail")),
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: 100.w,
                    child: ElevatedButton(
                        onPressed: () => {},
                        child: const Text(
                          "Proceed",
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
