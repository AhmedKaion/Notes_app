import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},),
      appBar: AppBar(
        title: Text('my first app'),
      ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
            children:[ Container(
              height:60,
              width: 100,
              color: Colors.blue,
                child: Center(child: Text('hello ahmed')),
            ),
              Container(
                height:60,
                width: 100,
                color: Colors.red,
                child: Center(child: Text('hello ahmed')),
              )
        ]
        ),
      );

  }
}
