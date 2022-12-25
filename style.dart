



import 'package:flutter/material.dart';

InputDecoration InputBoxStyle(label){
    return  InputDecoration(

      fillColor: Colors.white,
      filled: true,
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))
      )

    );
}

TextStyle ResultTextStyle(){
  return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(22),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      ),

  );
}