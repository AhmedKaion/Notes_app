import 'package:flutter/material.dart';
import 'package:practice/components/item.dart';
import 'package:practice/model/num.dart';

class Phantom extends StatelessWidget {
  const Phantom({super.key});

  final List<Number> numbers = const [
    Number(image: 'images/Birthday.png', enName: 'one'),
    Number(image: 'images/NIKE_logo.png', enName: 'two'),
    Number(image: 'images/NIKE_logo.png', enName: 'three'),
    Number(image: 'images/NIKE_logo.png', enName: 'four'),
    Number(image: 'images/NIKE_logo.png', enName: 'five'),
    Number(image: 'images/NIKE_logo.png', enName: 'six'),
    Number(image: 'images/NIKE_logo.png', enName: 'seven'),
    Number(image: 'images/NIKE_logo.png', enName: 'eight'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharses'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,num){
          return PhrasesItem(
              color:Colors.blue ,
              leb: numbers[num]);
        },

      ),
    );
  }
}