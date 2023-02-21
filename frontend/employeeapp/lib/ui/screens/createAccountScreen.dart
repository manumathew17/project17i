import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../theme/appColors.dart';
import '../../theme/appStyle.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreen();
}

class _CreateAccountScreen extends State<CreateAccountScreen> {
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
                            'Create a new account',
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
                                      hintText: 'Enter school name',
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
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter the valid email id',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter valid phone number',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  'Address details',
                                  style: heading6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'Address Line 1',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 32,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'Address line 2',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'City',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 32,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'State',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'Country',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 32,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: textWhiteGrey,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: TextFormField(
                                          //controller: username,
                                          decoration: InputDecoration(
                                            hintText: 'Pin Code',
                                            hintStyle: heading6.copyWith(
                                                color: textGrey),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 32,
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
                                  child: const Text("Create account"))),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Login if you already have account",
                                style: generalText,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: TextButton(
                                  style: textButtonPrimary,
                                  onPressed: () {
                                    context.go('/login');
                                  },
                                  child: const Text('Login'),
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
