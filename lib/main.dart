import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobooking/constant/color.dart';
import 'package:mobooking/InitialScreen/ui/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: AppColor.black, brightness: Brightness.dark),
          useMaterial3: false,
          // datePickerTheme: DatePickerThemeData(backgroundColor: ),

          appBarTheme:
              AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColor.yellow))),
          scaffoldBackgroundColor: AppColor.black),
      home: InitialScreen(),
    );
  }
}
