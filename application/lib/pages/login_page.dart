import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
              children: [
                const SizedBox(height: 50,) ,

                Icon(
                    Icons.lock,
                    size: 50
                ) ,
                const SizedBox(height: 20,),
                Text(
                  'Welcome Back ' ,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize : 16 ,

                  ),
                ) ,
                
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0) ,
                    child : TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),

                        )
                      ),
                    )
                ),

              ]
          ),
        ),
      ),
    );
  }
}
