import 'package:flutter/material.dart';

class QuranContentWidget extends StatelessWidget {
  const QuranContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Flexible(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'اخر قراءه',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                fontFamily: 'ebrima',
                color: Color.fromARGB(255, 133, 128, 128),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: Text(
                'سورة البقره',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'papyrus',
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                width: MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 160, 138),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: FittedBox(
                          child: Text(
                            'اكمل القراءه',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arial',
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.double_arrow_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
