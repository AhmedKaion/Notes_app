import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/notes_cubit/notess_cubit.dart';
import 'package:practice/notes_app/custom_appbar.dart';
import 'package:practice/notes_app/note_home.dart';
import 'package:practice/notes_app/note_item.dart';
import 'package:practice/notes_app/notes_listview.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
void initState(){
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height:50 ,
          ),
         CustomAppBar(
           title: 'Notes',
           icon: Icons.search,
         ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
