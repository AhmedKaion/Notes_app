import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:practice/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:practice/notes_app/coloritem.dart';
import 'package:practice/notes_app/colors_listview.dart';
import 'package:practice/notes_app/custom_button.dart';
import 'package:practice/notes_app/note_model.dart';
import 'package:practice/notes_app/textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          PureTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16
            ,),
          PureTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          ColorsListView(),
          SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true :false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat('dd-mm-yyyy').format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],

      ),
    );
  }
}