import 'package:application/widgets/google_button.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: const GOOGLEICON(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}