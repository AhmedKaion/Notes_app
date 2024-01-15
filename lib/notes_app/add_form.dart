
import 'package:flutter/material.dart';
import 'package:practice/notes_app/custom_button.dart';
import 'package:practice/notes_app/textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title ,subTitle;
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
            onSaved: (value){
              title=value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height:16
            ,),
          PureTextField(
            onSaved: (value){
              subTitle=value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height:70 ,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(
            height:16 ,
          ),
        ],

      ),
    );
  }
}