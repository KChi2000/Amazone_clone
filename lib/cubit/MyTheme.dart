import 'package:flutter/material.dart';

enum AppTheme{
  Light,
  Dark
}
final appThemeData={
  AppTheme.Light: ThemeData(primaryColor: Colors.yellowAccent,
  scaffoldBackgroundColor: Colors.white,
  // textTheme: TextTheme()
  ),
 AppTheme.Dark: ThemeData(primaryColor: Colors.redAccent,
  scaffoldBackgroundColor: Colors.grey.shade900,
  // textTheme: TextTheme()
  )
};
