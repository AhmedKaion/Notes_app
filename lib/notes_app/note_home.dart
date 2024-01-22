import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/notes_cubit/notess_cubit.dart';
import 'package:practice/notes_app/notes_body.dart';
import 'package:practice/notes_app/bottomsheet.dart';

class NoteHome extends StatelessWidget {
  const NoteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesBody(),
    );
  }
}
