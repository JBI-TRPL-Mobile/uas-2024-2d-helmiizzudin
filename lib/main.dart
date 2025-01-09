
import 'package:flutter/material.dart';
import 'login_page.dart'; 
import 'auth_page.dart'; 
import 'sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => AuthPage(), 
        '/Login': (context) => LoginPage(), 
        '/SignUp': (context) => SignUpPage(), 
      },
    );
  }
}