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
          backgroundColor: const Color.fromARGB(255, 211, 169, 238),
          appBar: AppBar(
            title: const Text(
              "  Thank you  (^///^)",
              style: TextStyle(
                  color: Color.fromARGB(255, 215, 187, 233), fontSize: 25),
            ),
            backgroundColor: const Color.fromARGB(255, 57, 1, 87),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          topRight: Radius.circular(100)),
                      color: Color.fromARGB(126, 142, 88, 165)),
                  height: 150,
                  width: double.infinity,
                  //    color: Color.fromARGB(41, 201, 7, 255),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(30),
                  child: const Text(
                    " Thank God You Are Safe    🪄    🪄",
                    style: TextStyle(
                        color: Color.fromARGB(255, 48, 2, 67), fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 370,
              ),
              Container(
                margin: const EdgeInsets.only(right: 300),
                height: 50,
                width: 50,
                child: MaterialButton(
                  onPressed: () {
                    if (isPlaying) {
                      _controller.stop();
                    } else {
                      _controller.play();
                    }

                    isPlaying = !isPlaying;
                  },
                  color: const Color.fromARGB(255, 199, 169, 231),
                  child: const Text("🎉"),
                ),
              ),
            ],
          ),
        ),
//!
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
          gravity: 0.1, //?سرعة انتشار القصاصات
          emissionFrequency: 1, //?كثافه القصاصات
        ),
      ],
    );
  }
}
