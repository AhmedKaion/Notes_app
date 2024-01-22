import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:practice/notes_app/constrant.dart';
import 'package:practice/notes_app/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

Color color= Color(0xffAC3931);
addNote(NoteModel note)async {
  note.color =color.value;
  emit(AddNoteLoading());
  try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNoteSuccess());
    await notesBox.add(note);
  }  catch (e) {
    emit(AddNoteFailure(e.toString()));
    // TODO
  }
}
}