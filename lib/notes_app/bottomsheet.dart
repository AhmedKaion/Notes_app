import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:practice/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:practice/notes_app/add_form.dart';
import 'package:practice/notes_app/custom_button.dart';
import 'package:practice/notes_app/textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
   const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteFailure){
              print('failed${state.errMessage}');
            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true:false,

                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}


