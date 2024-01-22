import 'package:flutter/material.dart';
import 'package:practice/notes_app/search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
final String title;
final void Function()? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: TextStyle( fontSize: 28),),
       Spacer(),
       SearchIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}


