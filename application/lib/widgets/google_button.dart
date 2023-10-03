
import 'package:flutter/material.dart';

class GOOGLEICON extends StatelessWidget {
  const GOOGLEICON({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
            child: Image.asset(
              'assets/images/google-logo.png' , 
              height: 200,
              width: 200,
              
            ),
          ), 
      );
      
  }
}