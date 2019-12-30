import 'package:flutter/material.dart';
import 'package:instagram_clone/views/login_screen.dart';
import 'package:instagram_clone/views/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginScreen.namedRoute: (context) => LoginScreen(),
        SignUpScreen.namedRoute: (context) => SignUpScreen()
      },
      home: LoginScreen(),
    );
  }
}
