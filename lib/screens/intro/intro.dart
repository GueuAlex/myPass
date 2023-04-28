//import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mypass/config/style.dart';
import 'package:mypass/screens/auth/login.dart';
import 'package:mypass/screens/auth/singin.dart';
import '../../models/intro.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<IntroContent> contents = IntroContent.introLis;
  int imageIndex = Random().nextInt(5);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(contents[currentIndex].image[imageIndex]),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: SafeArea(
          top: true,
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Côte d\'Ivoiree',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '|\t Qui sommes-nous?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 2,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "MyPass",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemCount: contents.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  contents[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Palette.whiteColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  contents[index].text,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }), (route) => false);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 13),
                        height: 45,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Palette.bleuColor),
                        child: const Text(
                          'Se connecter',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        //Get.put(CartController());
                        //Get.to(HomeScreen());
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) {
                          return const SinginScreen();
                        }), (route) => false);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 13),
                        height: 45,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white),
                        child: const Text(
                          'S\'inscrire',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Palette.whiteColor),
    );
  }
}
