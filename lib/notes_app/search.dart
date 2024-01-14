import 'package:flutter/material.dart';


class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(icon,size: 28,),
      ),
    );
  }
}