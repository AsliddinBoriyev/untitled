
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/pages/sign_up_pages.dart';

import '../constants/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "login_page";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 80, left: 30, right: 30, bottom: 25
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/icons/ic_arrow_back.png"),
              const SizedBox(height: 20,),
              const Text("Login to your \nAccount",style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600, fontFamily: "Jost",),),
              const SizedBox(height: 50,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.colorMain, width: 2.0),
                      borderRadius: BorderRadius.circular(15),),

                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: AppColors.colorField,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.colorMain, width: 2.0),
                      borderRadius: BorderRadius.circular(15),),
                    suffixIcon: Icon(Icons.visibility_off),
                    prefixIcon: Icon(Icons.lock_clock_rounded),
                    filled: true,
                    fillColor: AppColors.colorField,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Password",
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: AppColors.colorMain,
                    splashRadius: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    side: BorderSide(color: AppColors.colorMain, width: 2.0),
                    value: this.value ,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text("Remember me", style: TextStyle(fontFamily: "Jost", color: AppColors.colorMain, fontWeight: FontWeight.w600, fontSize: 16),),
                ],
              ),
              const SizedBox(height: 35,),
              Container(

                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.5),
                    color: AppColors.colorMain
                ),
                child: Center(
                    child: Text("Sign in",style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize:16, fontWeight: FontWeight.w700 ),)
                ),
              ),
              const SizedBox(height: 50,),
              Center(child: Text("Forgot password ?", style: TextStyle(fontFamily: "Jost", color: AppColors.colorMain, fontWeight: FontWeight.w600, fontSize: 16),)),
              const SizedBox(height: 50,),
              Row(
                  children: const <Widget>[
                    Expanded(
                        child: Divider()
                    ),
                    SizedBox(width: 25,),
                    Text("or continue with",style: TextStyle(color: AppColors.colorTextGrey),),
                    SizedBox(width: 25,),
                    Expanded(
                        child: Divider()
                    ),
                  ]
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 55,
                    width: 85,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.2)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset("assets/icons/ic_apple.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),

                    height: 55,
                    width: 85,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.2)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset("assets/icons/ic_google.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),

                    height: 55,
                    width: 85,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.2)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset("assets/icons/ic_facebook.png"),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: AppColors.colorBottomTextGrey,fontWeight: FontWeight.w400, fontFamily: "Montserrat",fontSize: 16),),
                  SizedBox(width: 10,),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(SignUpPage.id);
                      },
                      child: Text("Sign up",style: TextStyle(color: AppColors.colorMain,fontWeight: FontWeight.w700, fontFamily: "Montserrat",fontSize: 16),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}