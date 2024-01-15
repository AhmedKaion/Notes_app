import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:practice/notes_app/constrant.dart';
import 'package:practice/notes_app/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


addNote(NoteModel note)async {
  emit(AddNoteLoading());
  try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNoteSuccess());
    await notesBox.add(note);
  } on Exception catch (e) {
    AddNoteFailure(e.toString());
    // TODO
  }
}
}