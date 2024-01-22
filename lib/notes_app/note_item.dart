import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/cubits/notes_cubit/notess_cubit.dart';
import 'package:practice/notes_app/edit_note.dart';
import 'package:practice/notes_app/note_model.dart';
 class NoteItem extends StatelessWidget {
   const NoteItem({super.key, required this.note});
   @override
   final NoteModel note;
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return EditNote(
             note: note,
           );
         },
         ),
         );
       },
       child: Container(
         padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16,),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           color:  Color(note.color),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             ListTile(

               title: Text(
                 note.title,
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 26),
               ),
               subtitle:Padding(
                 padding: const EdgeInsets.only(top: 16,bottom: 16),
                 child: Text(
                     note.subTitle,
                     style: TextStyle(
                         color: Colors.black.withOpacity(.5),
                         fontSize: 18),
                 ),
               ),
               trailing:IconButton(onPressed: (){
                 note.delete();
                 BlocProvider.of<NotesCubit>(context).fetchAllNotes();
               },
                 icon:const Icon(
                   FontAwesomeIcons.trash,
                   color: Colors.black,
                   size: 24,),
               ) ,
             ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontSize: 16),),
              ),
           ],
         ),
       ),
     );
   }
 }
