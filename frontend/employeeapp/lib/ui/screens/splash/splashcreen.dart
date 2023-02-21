import 'package:employee/ui/utilities/SharedPreference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  SharedPreferenceSupport sharedPreferenceSupport = SharedPreferenceSupport();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text("SplashScreen"),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      sharedPreferenceSupport.getApiToken().then((value) {
        if (value == "NA") {
          context.pushReplacement('/createAccount');
        } else {
          context.pushReplacement('/home');
        }
      });
    });
  }
}
