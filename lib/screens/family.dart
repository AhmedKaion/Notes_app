import 'package:flutter/material.dart';
import 'package:practice/components/item.dart';
import 'package:practice/model/num.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  final List<Number> numbers = const [
    Number(image: 'images/Birthday.png', enName: 'Father'),
    Number(image: 'images/NIKE_logo.png', enName: 'Mother'),
    Number(image: 'images/NIKE_logo.png', enName: 'three'),
    Number(image: 'images/NIKE_logo.png', enName: 'four'),
    Number(image: 'images/NIKE_logo.png', enName: 'five'),
    Number(image: 'images/NIKE_logo.png', enName: 'six'),
    Number(image: 'images/NIKE_logo.png', enName: 'seven'),
    Number(image: 'images/97.png', enName: 'eight'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,num){
          return Item(
              color:Colors.green ,leb: numbers[num]);
        },

      ),
    );
  }
}
///List<Widget> getList(List<Number> numbers) {
  ///List<Widget> itemsList=[];
  ///for(int i=0 ; i < numbers.length; i++){
   /// itemsList.add(Item(color:Colors.green , leb: numbers[i]));
  ///}
  ///return itemsList;
///}
