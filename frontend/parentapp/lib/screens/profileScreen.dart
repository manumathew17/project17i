import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:50.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Icon(Icons.settings)
                ],
              ),
            ),
            // SizedBox(height: 5),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.png'),
              backgroundColor: Colors.yellow,
              radius: 50,
            ),
            const SizedBox(height: 10),
            Text('Antonio Perex', style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            )),
            Text('134,679 XP'),
            Text('BADGES', style: TextStyle(color: Colors.indigo[900]),),

            Text('FRIENDS',style: TextStyle(color: Colors.grey),),

            Text('SCORES',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom:20.0,right: 20, left: 20),
              child: Container(
                // width: 300,
                // height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            offset: Offset(4.0, 4.0),
                            spreadRadius: 1.0)
                      ]),
                  child:Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/medal.png'),
                        ),
                        title: Text('Perfectionist'),
                        subtitle: Text('Finish all lectures of a chapter'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/solution.png'),
                        ),
                        title: Text('Achiever'),
                        subtitle: Text('Complete all excercise'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/formula.png'),
                        ),
                        title: Text('Scholar'),
                        subtitle: Text('Study two courses'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/trophy.png'),
                        ),
                        title: Text('Champion'),
                        subtitle: Text('Finish #1 on the score board'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/bullseye.png'),
                        ),
                        title: Text('Focused'),
                        subtitle: Text('Study everyday for 30 days'),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}