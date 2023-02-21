import 'package:flutter/material.dart';
import 'package:parentapp/screens/dashboardScreen.dart';
import 'package:parentapp/screens/detailsConfirmation.dart';
import 'package:parentapp/screens/loginScreen.dart';
import 'package:parentapp/screens/profileScreen.dart';
import 'package:parentapp/screens/splashScreen.dart';
import 'package:parentapp/styles/appStyles.dart';
import 'package:parentapp/styles/colors.dart';
import 'package:sizer/sizer.dart';
import 'styles/colors.dart' as colors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,

            // Define the default brightness and colors.
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(color: colors.primary),
            primaryColor: colors.primary,
            fontFamily: 'Montserrat',
            elevatedButtonTheme:
                ElevatedButtonThemeData(style: elevatedButtonPrimary),
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.black12,
            ),
            splashColor: textGrey),
        home: const DashboardScreen(),
      );
    });
  }
}
