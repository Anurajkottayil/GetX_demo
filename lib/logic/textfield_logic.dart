// login_logic.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passwordController = TextEditingController().obs;

  final RxBool isLoading = false.obs;
  final RxBool isLoginButtonPressed = false.obs;

  String? validateEmail(String? value) {
    if (isLoginButtonPressed.value) {
      if (value == null || value.isEmpty) {
        return 'Email is required';
      } else if (!value.contains('@')) {
        return 'Invalid email address';
      }
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (isLoginButtonPressed.value) {
      if (value == null || value.isEmpty) {
        return 'Password is required';
      } else if (value.length < 8) {
        return 'Password must be at least 8 characters';
      }
    }
    return null;
  }

  Future<void> login() async {
    isLoading.value = true;

    // Simulating an asynchronous login process
    await Future.delayed(Duration(seconds: 2));

    // After login, you can navigate to the next screen
    

    isLoading.value = false;
  }
}
