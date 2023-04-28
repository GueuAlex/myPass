import 'package:flutter/material.dart';

import '../config/style.dart';
import 'actions_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      width: double.infinity,
      height: 70,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Palette.bleuColor.withOpacity(0.1),
                    border: Border.all(
                      width: 3,
                      color: Palette.bleuColor,
                    ),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/profil.jpeg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 5.0,
              ),
              FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome',
                      style: TextStyle(color: Palette.whiteColor),
                    ),
                    Text(
                      'John Doe',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Palette.whiteColor,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              ActionsButton(
                isBell: false,
                svg: 'assets/icons/search.svg',
                onTap: () {},
              ),
              const SizedBox(
                width: 8.0,
              ),
              ActionsButton(
                isBell: true,
                svg: 'assets/icons/bell-ring.svg',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
      //Text('data')
    );
  }
}
