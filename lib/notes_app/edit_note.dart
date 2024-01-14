import 'package:flutter/material.dart';
import 'package:practice/notes_app/editnotebody.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditBody(),
    );
  }
}
