import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'ToDo App',
            theme: ThemeData(
                fontFamily: 'Preahvihear',
                textTheme: TextTheme(
                    displayLarge: TextStyle(
                        fontFamily: 'Preahvihear',
                        fontWeight: FontWeight.w500,
                        color: lightbgColor,
                        fontSize: 20.sp),
                    displayMedium: TextStyle(
                        fontFamily: 'Preahvihear',
                        fontWeight: FontWeight.w500,
                        color: lightbgColor,
                        fontSize: 15.sp)),
                buttonTheme: ButtonThemeData(
                  focusColor: buttonColor

                ),
                primaryColor: darkbgColor,
                appBarTheme: AppBarTheme(backgroundColor: appbarColor)),
            home: HomePage(),
          );
        });

    //
  }
}
