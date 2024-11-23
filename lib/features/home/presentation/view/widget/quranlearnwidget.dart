import 'package:flutter/material.dart';

class quranLearningWidget extends StatelessWidget {
  const quranLearningWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.sizeOf(context).height * 0.23,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(102, 248, 213, 181),
            Color.fromARGB(102, 248, 213, 181),
            Color.fromARGB(102, 0, 160, 138),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.all(Radius.circular(
          30,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(image: AssetImage('assets/images/muslim 1.png')),
          //make the text responsive
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '     تعلم القرآن\n بطريقه صحيحه وسليمه',
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: MediaQuery.textScaleFactorOf(context) * 20,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff00A08A),
                child: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
