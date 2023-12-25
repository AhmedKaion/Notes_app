import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:practice/chat/button.dart';
import 'package:practice/chat/chat_page.dart';
import 'package:practice/chat/constant.dart';
import 'package:practice/chat/register.dart';
import 'package:practice/chat/snack_bar.dart';
import 'package:practice/chat/text_field.dart';


class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;

  String? password;
  bool isLoading= false;

  GlobalKey<FormState> formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: isLoading,
      child:Scaffold(
          backgroundColor:kprimaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key:formKey ,
              child: ListView(

                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Image(image: AssetImage('images/97.png',),height: 100,),
                  Center(
                    child: Text('Scholar Chat',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontFamily:'Agbalumo' ),),
                  ),
                  SizedBox(height: 75,),
                  Row(
                    children: [
                      Text('Login',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomField(
                    onChanged: (data){
                      email= data;
                    },
                    hintText: 'Email',
                    inputType: null,
                  ),
                  SizedBox(height: 10,),
                  CustomField(
                    obsecureText: true,
                    onChanged: (data){
                      password= data;
                    },
                    hintText: 'Password', inputType: null,
                  ),
                  SizedBox(height: 20,),
                  CustomButton(
                    onTap:()async{
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {

                        });
                        try{
                          await loginUser();

                          Navigator.pushNamed(context, ChatPage.id,arguments: email);

                        } on FirebaseAuthException catch(e){
                          if(e.code == 'user-not-found'){
                            showSnakBar(context,'user not found');
                          } else if(e.code == 'wrong-password'){
                            showSnakBar(context,'wrong password');
                          }
                        } catch(e){
                          showSnakBar(context,'error');
                        }
                        isLoading= false;
                      }

                    },
                    text: 'Login',),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account ?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,'Sign up');
                        },
                        child: Text('  SignUp',
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }



   Future<UserCredential> loginUser() async {
     var auth = FirebaseAuth.instance;
     UserCredential user =  await auth.signInWithEmailAndPassword(
         email:email! , password:password! );
     return user;
   }
}
