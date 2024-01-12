import 'package:flutter/material.dart';
import 'package:practice/notes_app/notes_body.dart';
import 'package:practice/notes_app/bottomsheet.dart';
class NoteHome extends StatelessWidget {
  const NoteHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showBottomSheet(
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ), context: context, builder: (context){
            return const AddNoteBottomSheet();
          }
          );
        },
        child: const Icon(Icons.add),
      ),
      body:const NotesBody() ,
      );
  }
}
