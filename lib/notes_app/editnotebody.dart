import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/chat/text_field.dart';
import 'package:practice/cubits/notes_cubit/notess_cubit.dart';
import 'package:practice/notes_app/colors_listview.dart';
import 'package:practice/notes_app/custom_appbar.dart';
import 'package:practice/notes_app/editcolors.dart';
import 'package:practice/notes_app/note_model.dart';
import 'package:practice/notes_app/textfield.dart';

class EditBody extends StatefulWidget {
  const EditBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            onPressed: (){
              widget.note.title=title??widget.note.title;
              widget.note.subTitle=content??widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          PureTextField(
            onChanged: (value){
              title = value;
            },
              hint: widget.note.title,
          ),
          SizedBox(
            height: 16,
          ),
          PureTextField(
            onChanged: (value){
              content= value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
           SizedBox(
             height: 16,
           ),
           EditColorList(note: widget.note,),
        ],
      ),
    );
  }
}
