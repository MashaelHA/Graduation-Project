
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:awesome_dialog/awesome_dialog.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/home/components/tab.dart';
class Firebaseauth{
  
CollectionReference userref =FirebaseFirestore.instance.collection("users");
CollectionReference userfavorite =FirebaseFirestore.instance.collection("userfavorites");
getdata(String email,String password,context) async{
  
  await userref.where("email",isEqualTo: email).where("password",isEqualTo: password).get().then((value) {
    //print(value.docs.isEmpty);
    if(value.docs.isEmpty){
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Password or Email not correct',
        // btnOkOnPress: () {},
      ).show();
    }
    value.docs.forEach((element) {
      if(element.exists){
        _save(element.id);
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => ChangePage()));
      }
    });
  });
 
}

postdata(
String email,
String name,
String password,
String phone,
) async{
  
    final prefs = await SharedPreferences.getInstance();
  userref.add({
    "email":email,
    
    "name":name,
    
    "password":password,
    
    "phone":phone,
  });
  username=[];
  await userref.where("email",isEqualTo: email).where("password",isEqualTo: password).get().then((value) {
    //print(value.docs.isEmpty);
    value.docs.forEach((element) async {
      if(element.exists){
        // ignore: avoid_print
        print("exist");
        _save(element.id.toString());
        username.add(await userref.doc(prefs.get('token').toString()).get()); 
      }
    });
  });
}

_save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    // ignore: prefer_const_declarations
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
    // ignore: avoid_print
    print(prefs.get('token'));
  }

  Future<void> addtofavorite(String id) async {
     final pref=await SharedPreferences.getInstance();
    userfavorite.add({
      "place_id": id,
      "user_id": pref.get('token').toString()
  });
  }

  Future<void> deletefromfavorite(String id) async {
     final pref=await SharedPreferences.getInstance();
    userfavorite.where("place_id",isEqualTo: id).where("user_id",isEqualTo: pref.get('token').toString()).get().then((value) {
      for(DocumentSnapshot ds in value.docs)
          {
           ds.reference.delete(); 
          }
    });
    
  }

  Future<bool> isFavorite(String id) async {
    bool s=true;
     final pref=await SharedPreferences.getInstance();
     await userfavorite.where("place_id",isEqualTo: id).where("user_id",isEqualTo:  pref.get('token').toString()).get().then((value) {
    //print(value.docs.isEmpty);
    value.docs.forEach((element) {
      if(element.exists){
        s=false;
      }
      
    });
  });
  // ignore: avoid_print
  print(s);
  return s;
  }

 static List  favorites=[];
  
 getfavorite() async{
  final pref=await SharedPreferences.getInstance();
  await userfavorite.where("user_id",isEqualTo: pref.get('token').toString()).get().then((value) {
   for(DocumentSnapshot ds in value.docs)
          {
           favorites.add(ds.data()); 
          }
  });
}
 static List  username=[];
  getname() async{
  final pref=await SharedPreferences.getInstance();
 username.add(await userref.doc(pref.get('token').toString()).get()); 
}
}