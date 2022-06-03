import 'package:flutter/material.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/sign_up_pages.dart';

import 'constants/app_colors.dart';

void main(){
  runApp(const FigmaJune2());
}
class FigmaJune2 extends StatelessWidget {
  const FigmaJune2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.colorBackground,
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: AppColors.colorMain,
          ),
        ),
        home: LoginPage(),
        routes:{
          LoginPage.id: (context) => LoginPage(),
          SignUpPage.id: (context) => SignUpPage(),
        }
    );
  }
}