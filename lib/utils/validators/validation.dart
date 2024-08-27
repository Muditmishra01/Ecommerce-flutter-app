import 'package:flutter/material.dart';
class MValidator{
  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return 'Email is required.';
    }

  // email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }

    return null;

  }
  static String? validatePassword(String? value){
    if(value==null || value.isEmpty){
      return 'Password is required';
    }
    //minimum password length
    if(value.length<6){
      return 'Passwrod must be atleast 6 characters long';
    }
    // check for numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain atleast one number ';
    }
    //check special char
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?:|<>{}[]'))){
      return 'Passwrod must contain atleast one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value==null || value.isEmpty){
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digit required).';
    }
    return null;
  }

}
