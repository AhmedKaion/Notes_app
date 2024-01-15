import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:practice/bs.dart';
import 'package:practice/chat/chat_page.dart';
import 'package:practice/chat/login.dart';
import 'package:practice/chat/register.dart';
import 'package:practice/ci.dart';
import 'package:practice/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/news/new.dart';
import 'package:practice/news/service.dart';
import 'package:practice/notes_app/constrant.dart';
import 'package:practice/notes_app/note_home.dart';
import 'package:practice/notes_app/note_model.dart';
import 'package:practice/notes_app/simple_bloc.dart';
import 'package:practice/screens/lale.dart';
import 'package:practice/ppp.dart';
import 'package:practice/bd.dart';
import 'package:practice/screens/numbers.dart';
import 'package:practice/store/home.dart';
import 'package:practice/store/service/update_product.dart';
import 'package:practice/store/update_product.dart';
import 'package:practice/tune/tunes.dart';
import 'package:dio/dio.dart';
import 'package:practice/weather/home.dart';

//  void main(){
// // { async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
//   runApp(const MyApp());

void main()async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBloc();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Arial'),
        routes: {
          UpdateProduct.id: (context) => const UpdateProduct(),
        },
        home: const NoteHome(),
      ),
    );
  }
}
//   'Login' :(context) => Login(),
//   'Sign up' :(context) => Register(),
//   ChatPage.id :(context) => ChatPage(),
// Widget build(BuildContext context) {
//   return BlocProvider(
//       create: (context) => GetWeatherCubit(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//         ),
//         home:  Home(),
//       ));
