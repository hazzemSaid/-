import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/CustomTextField.dart';

class UserRegistrationScreen extends StatelessWidget {
  UserRegistrationScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                ),
                const Text('انشاء حساب جديد',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextField(
                        validation: formKey,
                        controll: nameController,
                        text: 'الاسم',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validation: formKey,
                        controll: emailController,
                        text: 'البريد الالكتروني',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validation: formKey,
                        text: "الباسورد",
                        controll: passwordController,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        validation: formKey,
                        controll: confirmPasswordController,
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
                  onTap: () {
                    if (formKey.currentState!.validate() &&
                        passwordController.text ==
                            confirmPasswordController.text) {
                      print('Validated');
                    }
                  },
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
                const SizedBox(
                  height: 25,
                ),
                const Text("او",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "تسجيل الدخول بواسطه",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Tajawal',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'تسجيل الدخول',
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Tajawal',
                          color: const Color.fromARGB(255, 4, 231, 198),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text('لديك حساب بالفعل؟',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Tajawal',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
