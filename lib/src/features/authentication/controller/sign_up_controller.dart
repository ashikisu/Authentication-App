
import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=> Get.find();


  final email= TextEditingController();
  final password= TextEditingController();
  final fullName= TextEditingController();
  final phoneNumber= TextEditingController();


  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWIthEmailAndPassword(email, password);

  }


}