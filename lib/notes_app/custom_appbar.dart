import 'package:flutter/material.dart';
import 'package:practice/notes_app/search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',style: TextStyle( fontSize: 28),),
       Spacer(),
       SearchIcon(),
      ],
    );
  }
}


