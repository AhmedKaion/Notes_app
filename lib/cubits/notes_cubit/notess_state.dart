part of 'notess_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
// class NoteLoading extends NotesState {}
 class NoteSuccess extends NotesState {}
//   final List<NoteModel> notes;
//
//   NoteSuccess(this.notes);
// }
// class NoteFailure extends NotesState {
//   final String errMessage;
//
//   NoteFailure(this.errMessage);
// }
