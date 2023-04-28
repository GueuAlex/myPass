import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/style.dart';

class SinginTextField extends StatefulWidget {
  const SinginTextField({super.key});

  @override
  State<SinginTextField> createState() => _SinginTextFieldState();
}

class _SinginTextFieldState extends State<SinginTextField> {
  /////////////////////// controllers/////////////////////////////////
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    //////////////////////first name field ///////////
    final firstNameFiel = TextFormField(
      autofocus: false,

      //first name validator
      validator: (value) {
        if (value!.isEmpty) {
          return ('Le nom est obligatoire !');
        }

        if (value.length < 2) {
          return ('Nom trop court !');
        }

        return null;
      },
      controller: firstNameController,
      keyboardType: TextInputType.name,
      //validation: ()=>{}
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.person,
          color: Palette.bleuColor,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: 'Nom complet',
        labelStyle: const TextStyle(color: Palette.bleuColor),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),

        //fillColor: Style.appWhite,
      ),
    );

    ///////////////confirm password field/////////////
    final confirmPasswordField = TextFormField(
      controller: confirmPasswordController,
      autofocus: false,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Veuillez confirmer le mot de passe !");
        }
        if (confirmPasswordController.text != passwordController.text) {
          return ("Les mots de passe ne correspondent pas !");
        }
        //email match regEx

        return null;
      },
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.lock,
          color: Palette.bleuColor,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        //hintText: 'email',
        labelText: 'Mot de passe',
        labelStyle: const TextStyle(color: Palette.bleuColor),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
    ///////////// email field ///////////////////
    final emailField = TextFormField(
      controller: emailController,
      autofocus: false,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Veuillez entrer un email correct !");
        }

        //email match regEx
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return ("Veuillez entrer un email correct !");
        }

        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.mail,
          color: Palette.bleuColor,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        //hintText: 'email',
        labelText: 'Email',
        labelStyle: const TextStyle(color: Palette.bleuColor),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    //////////////////// password field ///////////////
    final passwordField = TextFormField(
      controller: passwordController,
      autofocus: false,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Veuillez renseigner le mot de passe !");
        }

        //email match regEx

        return null;
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.lock,
          color: Palette.bleuColor,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        //hintText: 'email',
        labelText: 'Mot de passe',
        labelStyle: const TextStyle(color: Palette.bleuColor),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Palette.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)),
            child: firstNameFiel,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Palette.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)),
            child: emailField,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Palette.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)),
            child: passwordField,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Palette.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0)),
            child: confirmPasswordField,
          ),
        ),
      ],
    );
  }
}
