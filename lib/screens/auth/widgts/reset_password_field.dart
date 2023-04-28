import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/style.dart';

class ResetPasswordTextField extends StatefulWidget {
  const ResetPasswordTextField({super.key});

  @override
  State<ResetPasswordTextField> createState() => _ResetPasswordTextFieldState();
}

class _ResetPasswordTextFieldState extends State<ResetPasswordTextField> {
  /////////////////////// controllers/////////////////////////////////
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        labelText: 'Confirmer le mot de passe',
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
                color: Palette.greyColor,
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
                color: Palette.greyColor,
                borderRadius: BorderRadius.circular(15.0)),
            child: confirmPasswordField,
          ),
        ),
      ],
    );
  }
}
