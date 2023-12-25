import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:practice/screens/family.dart';
import 'package:practice/screens/numbers.dart';
import 'package:practice/screens/pharses.dart';

class Learning extends StatelessWidget {
  const Learning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('hello');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Numbers()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xffEF9235),
              child: const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Numbers',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('hello');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Family()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Family member',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 65,
            width: double.infinity,
            color: Colors.deepPurple,
            child: const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Colors',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('hello');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Phantom()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Pharses',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
