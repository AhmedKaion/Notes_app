import 'package:flutter/material.dart';
import 'package:practice/notes_app/editnotebody.dart';
import 'package:practice/notes_app/note_model.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditBody(note: note,),
    );
  }
}
