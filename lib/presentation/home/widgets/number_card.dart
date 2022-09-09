import 'dart:ui';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: kRaduis10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 10,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 120,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
