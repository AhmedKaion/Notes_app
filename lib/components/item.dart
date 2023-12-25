import 'package:flutter/material.dart';
import 'package:practice/model/num.dart';


class Item extends StatelessWidget {
  const Item({super.key, required this.leb, required this.color});
final Number leb;
final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Colors.white38,
              child: Image.asset(leb.image!)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(leb.enName,style: TextStyle(fontSize: 24, color: Colors.white),),
              ),
            ],
          ),
          Spacer(flex: 1,),
          IconButton(
            splashColor: Colors.black,
            onPressed:  (){},
            icon: const Icon(Icons.play_arrow,
            color: Colors.white,
            size: 30,),
          ),

        ],
      ),
    );
  }
}
 class PhrasesItem extends StatelessWidget {
   const PhrasesItem({super.key, required this.leb, required this.color});
 final Number leb;
 final Color color;
   @override
   Widget build(BuildContext context) {
     return Container(
       color: color,
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.all(12),
             child: Text(leb.enName,style: TextStyle(fontSize: 24, color: Colors.white),),
           ),

         Spacer(flex: 1,),
       IconButton(
       splashColor: Colors.black,
       onPressed:  (){},
       icon: const Icon(Icons.play_arrow,
       color: Colors.white,
       size: 30,),
       ),

         ],
       ),
     );
   }
 }
 