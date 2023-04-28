import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypass/config/style.dart';
import 'package:mypass/custom_widgets/leanding.dart';
import 'package:mypass/screens/auth/login.dart';
//import 'package:mypass/screens/auth/widgts/login_text_field.dart';
import 'package:mypass/screens/auth/widgts/singin_text_field.dart';

import '../../custom_widgets/text_widget.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({super.key});

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  final int _imageIndex = Random().nextInt(20);

  final List<String> _imageList = [
    'assets/images/sport4.jpeg',
    'assets/images/concert6.jpeg',
    'assets/images/movie12.jpeg',
    'assets/images/party1.jpg',
    'assets/images/hotel12.jpeg',
    'assets/images/sport1.jpeg',
    'assets/images/concert.jpg',
    'assets/images/movie11.jpeg',
    'assets/images/party11.jpeg',
    'assets/images/hotel.jpg',
    'assets/images/sport2.jpeg',
    'assets/images/concert1.jpg',
    'assets/images/movie.jpg',
    'assets/images/party.jpg',
    'assets/images/hotel3.jpg',
    'assets/images/sport.jpg',
    'assets/images/concert2.jpg',
    'assets/images/movie4.jpg',
    'assets/images/party12.jpeg',
    'assets/images/hotel11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(_imageList[_imageIndex]),
        fit: BoxFit.cover,
      )),
      child: Container(
        // width: double.infinity,
        color: Colors.black.withOpacity(0.5),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Do something when the button is pressed
            }, // Icon to display on the button
            backgroundColor: Palette.bleuColor,
            child: const Icon(
              CupertinoIcons.chevron_right,
              color: Palette.whiteColor,
            ), // Background color of the button
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: 150,
            leading: CustomLeading(
              contextColor: Palette.whiteColor,
              text: 'Connexion',
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }), (route) => false);
              },
            ),
          ),
          body: SafeArea(
            top: true,
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  const TextWidget(
                    text: 'Lets get started !',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  const TextWidget(
                    text: 'Create an account to MyPass to get all features.',
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  const SinginTextField(),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 2,
                        color: Palette.whiteColor,
                        margin: const EdgeInsets.only(right: 4.0),
                      ),
                      const Text(
                        'OU',
                        style: TextStyle(
                            color: Palette.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 100,
                        height: 2,
                        color: Palette.whiteColor,
                        margin: const EdgeInsets.only(left: 4.0),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    child: const Text(
                      ' se connecter maintenant',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Palette.whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


///////////////text widget//////////////////////
