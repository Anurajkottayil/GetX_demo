// login_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/home_screen.dart';
import 'package:get_example/register_screen.dart';
import 'package:get_example/theme.dart';
import 'package:get_example/view/text_field.dart';
import 'package:get_example/logic/textfield_logic.dart';

class LoginPage extends StatelessWidget {
   final LoginLogic logic = Get.put(LoginLogic());

   LoginPage({Key? key});

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
                 Obx(() => CustomTextField(
                   controller: logic.emailController.value,
                   label: 'Email',
                   validator: logic.validateEmail,
                    onChanged: () {
                              logic.isLoginButtonPressed.value = false;
                            },
                 )),
              
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                
                  Text("Password",style: themedata.text,),
                 Obx(() => CustomTextField(
                   controller: logic.passwordController.value,
                   label: 'Password',
                   validator: logic.validatePassword,
                    onChanged: () {
                              logic.isLoginButtonPressed.value = false;
                            },
                 )),
              
               
                SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
               
                ElevatedButton(onPressed: () async {
                  logic.isLoginButtonPressed.value = true; // Set the flag when login button is pressed
                  await logic.login();
                }, child:Text("Login"),style: themedata.button,),
               
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
