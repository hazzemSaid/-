import 'package:flutter/material.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('انشاء حساب جديد',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  )),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextField(
                      text: 'الاسم',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      text: 'البريد الالكتروني',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      text: "الباسورد",
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      text: "تأكيد الباسورد",
                      isPassword: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        colors: [
                          //background: linear-gradient(89.15deg, #00A08A 3.05%, #04E7C6 96.98%);
                          Color.fromARGB(255, 0, 160, 138),
                          Color.fromARGB(255, 4, 231, 198),
                          Color.fromARGB(255, 4, 231, 198),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'تسجيل دخول',
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Tajawal',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.isPassword = false,
  });

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
