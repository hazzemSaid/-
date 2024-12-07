import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';

import '../widgets/CustomTextField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.14,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 65),
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    decoration: const BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextField(
                        validation: formKey,
                        controll: emailController,
                        text: 'البريد الالكتروني',
                      ),
                      const SizedBox(
                        height: 45,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: const Text(
                              'نسيت كلمه المرور؟',
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Tajawal',
                                color: Color.fromARGB(255, 4, 231, 198),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      //using route name
                      print('Validated');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'انشاء حساب',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Tajawal',
                        color: Color.fromARGB(255, 4, 231, 198),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Text(
                        'ليس لديك حساب؟',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Tajawal',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
