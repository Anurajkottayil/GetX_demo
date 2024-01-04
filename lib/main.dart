import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/login_page.dart';
import 'package:get_example/register_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:"snackbar",
      home: LoginPage(),
  
    );
  }
}