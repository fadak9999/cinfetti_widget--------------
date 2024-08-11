import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
//
  final _controller = ConfettiController();
  bool isPlaying = false;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.center,//? يحدد من اين ترمى القصاصات
      alignment: Alignment.topCenter, //?من اعلى الصفحه تنزل
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 93, 2, 142),
          ),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                if (isPlaying) {
                  _controller.stop();
                } else {
                  _controller.play();
                }

                isPlaying = !isPlaying;
              },
              color: const Color.fromARGB(255, 169, 123, 218),
              child: const Text("ccc"),
            ),
          ),
        ),
//
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2, //?اتجاه الرمي
          //  blastDirection: 0,
          //  blastDirection: pi/2,
          //  blastDirection:-pi/2,
          //or pi
          colors: const [
            //?لون القصاصات
            Color.fromARGB(255, 224, 208, 71),
            Color.fromARGB(255, 242, 239, 239),
            Color.fromARGB(255, 74, 4, 112),
            Color.fromARGB(255, 164, 29, 236),
          ],
          gravity: 0.2, //?مسافه انتشار القصاصات
          emissionFrequency: 1, //?كثافه القصاصات
        ),
      ],
    );
  }
}
