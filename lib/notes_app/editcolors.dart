import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:practice/notes_app/coloritem.dart';
import 'package:practice/notes_app/constrant.dart';
import 'package:practice/notes_app/note_model.dart';

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentIndex;

  @override
  void initState(){
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 *2 ,
      child: ListView.builder(

          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                   widget.note.color= kColors[index].value;
                   setState(() {

                   });
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }
      ),
    );
  }
}
