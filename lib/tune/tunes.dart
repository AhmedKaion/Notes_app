import 'package:flutter/material.dart';
import 'package:practice/tune/tune_item.dart';
import 'package:practice/tune/tune_model.dart';

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(Colors.redAccent, 'note1.wav'),
    TuneModel(Colors.orange, 'note2.wav'),
    TuneModel(Colors.yellow, 'note3.wav'),
    TuneModel(Colors.green, 'note4.wav'),
    TuneModel(Colors.greenAccent, 'note5.wav'),
    TuneModel(Colors.blue, 'note6.wav'),
    TuneModel(Colors.purple, 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('Fluter Tune')),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }

// List <TuneItem> getTuneItem()
//{
//List <TuneItem> items=[];

//for(var color in tuneColors){
//  items.add(TuneItem(color: color));
// }
//return items;
//}
}
