import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  const Birthday({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple,
          title: Text('Happy Birthday')


        ),
      backgroundColor: Color(0xFFD2BCD5),
      body: Center(child: Image(image:AssetImage('images/Birthday.png'),)),
      ),

    );
  }
}
