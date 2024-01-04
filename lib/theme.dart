import 'package:flutter/material.dart';

class  themedata{

  
  //--------------------------- text style ------------------------

  
  static const text = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
//-------------------- input text field------------------------


  static final text_field= InputDecoration(
    border: OutlineInputBorder(),
  );
 
 //------------- button style -----------------


  static const button = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 103, 17, 201)),
      fixedSize: MaterialStatePropertyAll(Size(500.0, 50.0)),
      foregroundColor: MaterialStatePropertyAll( Colors.white),
        );


}


