import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.isPassword = false,
    required this.controll,
  });
  final TextEditingController controll;
  final String text;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
        enabledBorder: const OutlineInputBorder(
          gapPadding: 10,
          borderSide: BorderSide(
            color: Colors.black45,
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
      ),
    );
  }
}
