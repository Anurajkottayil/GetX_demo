import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/home_screen.dart';
import 'package:get_example/login_page.dart';
import 'package:get_example/theme.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),

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
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                 
                  Text("Name :",style:themedata.text ,),
                  TextField(
                    decoration: themedata.text_field,
                  ),
                  
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  
                   Text("Phone :",style:themedata.text ,),
                  TextField(
                    decoration: themedata.text_field,
                  ),
                  
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                   
                   Text("E-mail :",style:themedata.text ,),
                  TextField(
                    decoration: themedata.text_field,
                  ),
                  
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                   
                   Text("Password :",style:themedata.text ,),
                  TextField(
                    decoration: themedata.text_field,
                  ),
                   
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  
                   Text("Confirm password :",style:themedata.text ,),
                  TextField(
                    decoration: themedata.text_field,
                  ),
                 
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                  
                  ElevatedButton(onPressed: (){Get.to(() => Homepage1());}, child: Text("Submit"),style: themedata.button,),
                 
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account? "),
                      TextButton(onPressed: (){Get.to(() => LoginPage());                                                                                                           }, child: Text("Login"))
                    ],
                  )
                ],
              ),
            ),
          ),
          
        ),
      ),
    );
  }
}