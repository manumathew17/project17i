import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../theme/appColors.dart';
import '../../theme/appStyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: <Widget>[
          Container(
            width: 40.w,
            height: 100.h,
            color: primaryColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[FlutterLogo()],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: 60.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 50.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 40.0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login to your account',
                            style: heading2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    //controller: username,
                                    decoration: InputDecoration(
                                      hintText: 'Username',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: textWhiteGrey,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: TextFormField(
                                    //controller: username,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle:
                                          heading6.copyWith(color: textGrey),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                              height: 50,
                              width: 100.w,
                              child: ElevatedButton(
                                  style: elevatedButtonPrimary,
                                  onPressed: () {
                                    print("object");
                                  },
                                  child: const Text("Login"))),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account",
                                style: generalText,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 50,
                                child: TextButton(
                                  style: textButtonPrimary,
                                  onPressed: () {
                                    context.go('/dashBoard');
                                  },
                                  child: const Text('Create account'),
                                ),
                              ),
                            ],
                          ),

                          // Align(
                          //   alignment: Alignment.bottomRight,
                          //   child: TextButton(
                          //     onPressed: () {},
                          //     style: textButtonStyle,
                          //     child: const Text("Help?"),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
