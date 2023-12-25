import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:practice/chat/button.dart';
import 'package:practice/chat/constant.dart';
import 'package:practice/chat/login.dart';
import 'package:practice/chat/text_field.dart';


class Register extends StatefulWidget {
   Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  Text('Register',
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
                onChanged: (data){
                  password= data;
                },
                hintText: 'Password',
                inputType: null,
              ),
              SizedBox(height: 20,),
              CustomButton(
                onTap:()async{
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {

                    });
                    try{
                      await registerUser();
                      showSnakBar(context,'Successfully');


                    } on FirebaseAuthException catch(e){
                      if(e.code == 'weak-password'){
                      showSnakBar(context,'weak password');
                    } else if(e.code == 'emil-already-used'){
                        showSnakBar(context,'email already exist');
                      }
                      } catch(e){
                      showSnakBar(context,'error');
                    }
                    isLoading= false;
                  }
                  Navigator.pushNamed(context, 'Login');
                    },
                text: 'SignUp',),
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
                      Navigator.pop(context);
                    },
                    child: Text('  Login',
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

  void showSnakBar(BuildContext context,String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),),);
  }

  Future<UserCredential> registerUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user =  await auth.createUserWithEmailAndPassword(
        email:email! , password:password! );
    return user;
  }
}
