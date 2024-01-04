// textfield_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final VoidCallback? onChanged;

  CustomTextField({
    required this.controller,
    required this.label,
    this.validator,
    
     this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextField(
        controller: controller,
        onChanged: (text) {
        onChanged?.call();
      },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
         hintText : label,
          errorText: validator?.call(controller.text),
        ),
      );
    });
  }
}
