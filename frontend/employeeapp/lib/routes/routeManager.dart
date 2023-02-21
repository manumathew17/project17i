import 'dart:js';

import 'package:employee/ui/screens/createAccountScreen.dart';
import 'package:employee/ui/screens/dashBoardScreen.dart';
import 'package:employee/ui/screens/loginScreen.dart';
import 'package:employee/ui/screens/splash/splashcreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const MyHomePage(title: "HomePage"),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: '/createAccount',
        builder: (context, state) => const CreateAccountScreen()),
    GoRoute(
        path: '/dashBoard',
        builder: (context, state) => const DashBoardScreen())
  ],
);
