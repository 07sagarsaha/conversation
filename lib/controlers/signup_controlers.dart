import 'package:conversation/reprojetry/auth_reprosotry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupControler extends GetxController {
  static SignupControler get instance => Get.find();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  void registeruser(String email, String password) {
    AuthReprosotry.instance.createUserwithemailandpassword(email, password);
  }
}
