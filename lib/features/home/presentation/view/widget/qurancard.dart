import 'package:flutter/material.dart';
import 'package:quran_app/features/home/presentation/view/widget/qurancardcontent.dart';

class quradcard extends StatelessWidget {
  const quradcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(102, 138, 191, 184),
            Color.fromARGB(102, 220, 238, 235),
            Color.fromARGB(102, 0, 160, 138),
          ],
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(
              'assets/images/quran.png',
            ),
            height: 100,
          ),
          Icon(
            Icons.arrow_left_sharp,
            size: 30,
          ),
          Text(
            'اكمل القراءه',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'arial',
              height: 1.5,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          QuranContentWidget(),
        ],
      ),
    );
  }
}
