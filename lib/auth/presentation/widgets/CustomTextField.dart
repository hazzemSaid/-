import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.isPassword = false,
    required this.controll,
    required this.validation,
  });
  final TextEditingController controll;
  final String text;
  final bool isPassword;
  final GlobalKey<FormState> validation;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'الرجاء ادخال القيمه';
        }
        return null;
      },
      controller: widget.controll,
      obscureText: widget.isPassword ? !isPasswordVisible : false,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        prefixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white10,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        hintText: widget.text,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        filled: true,
      ),
    );
  }
}
