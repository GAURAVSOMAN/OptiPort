import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          title: const Text("OptiPort"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  child: Center(
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: (){
                          debugPrint('Card Tapped');
                        },
                        child: Center(
                          widthFactor: 0.8,
                          child: SizedBox(
                            width: 600,
                            height: 80,
                            child: Center(

                              child: Text("LOGIN")
                          ),
                          ),
                        ),
                      ),
                    ),
                  )

              ),
            ],
          ),
        ),
      ),

    debugShowCheckedModeBanner: false,
    );
  }
}