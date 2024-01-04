import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/home_screen.dart';
import 'package:get_example/register_screen.dart';
import 'package:get_example/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Login"),

        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 46, 137, 255), width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.2,),
                  Text("E mail",style: themedata.text,),
                  TextField(
                        decoration: themedata.text_field,
                      ),
              
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                
                  Text("Password",style: themedata.text,),
                  TextField(
                        decoration: themedata.text_field,
                      ),
               
                SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
               
                ElevatedButton(onPressed: (){Get.to(()=>Homepage1());}, child:Text("Login"),style: themedata.button,),
               
                SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not Registered?"),
                    TextButton(onPressed: (){Get.to(() => HomePage());}, child: Text("Register"))
                  ],
                )
                
                ]),
              ),
            ),
          ),
        ),

    );
  }
}