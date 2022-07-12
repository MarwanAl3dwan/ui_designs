import 'package:flutter/material.dart';

import 'modules/login/login_screen.dart';
import 'shared/styles/theme.dart';

void main() {
  runApp(const MyApp());
}
// Branch_1 code..
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const LoginScreen(),
    );
  }
}
