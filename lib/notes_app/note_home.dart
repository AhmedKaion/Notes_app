import 'package:flutter/material.dart';
import 'package:practice/notes_app/notes_body.dart';

class NoteHome extends StatelessWidget {
  const NoteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),
      ),
   body:NotesBody() ,
    );
  }
}
