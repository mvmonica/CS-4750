
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/pages/home_page.dart';

class SplashScreen extends StatelessWidget {

  pushToHomePage(BuildContext context) async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    pushToHomePage(context);
    return Scaffold(

      backgroundColor: Color(0xFF8ABD91),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today,size: 150,color: Color(0xFF292B5B),),
              SizedBox(height: 10,),
              Text('RemindMe',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );
  }
}
