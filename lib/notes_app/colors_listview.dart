import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:practice/notes_app/coloritem.dart';
import 'package:practice/notes_app/constrant.dart';
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;

  @override

  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 *2 ,
      child: ListView.builder(

        itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: (){
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color =kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      }
      ),
    );
  }
}
