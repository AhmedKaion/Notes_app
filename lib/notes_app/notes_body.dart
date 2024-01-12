import 'package:flutter/material.dart';
import 'package:practice/notes_app/custom_appbar.dart';
import 'package:practice/notes_app/note_home.dart';
import 'package:practice/notes_app/note_item.dart';
import 'package:practice/notes_app/notes_listview.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height:50 ,
          ),
         CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
