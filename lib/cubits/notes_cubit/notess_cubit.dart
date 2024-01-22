import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:practice/notes_app/constrant.dart';
import 'package:practice/notes_app/note_model.dart';

part 'notess_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List<NoteModel>? notes;
fetchAllNotes()async {

    var notesBox = Hive.box<NoteModel>(kNotesBox);
     notes =notesBox.values.toList();
    emit(NoteSuccess());
}
}
