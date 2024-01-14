import 'package:flutter/material.dart';
import 'package:practice/chat/text_field.dart';
import 'package:practice/notes_app/custom_appbar.dart';
import 'package:practice/notes_app/textfield.dart';

class EditBody extends StatelessWidget {
  const EditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          PureTextField(hint: 'Title'),
          SizedBox(height: 16,),
          PureTextField(hint: 'Content',maxLines: 5,)

        ],
      ),
    );
  }
}
