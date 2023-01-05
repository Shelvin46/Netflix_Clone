import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class NumberTitleCard extends StatelessWidget {
  NumberTitleCard({super.key, required this.index});
  final int index;
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            numberCardSize,
            Container(
              width: 150,
              height: 250,
              decoration: boxDecorationNumber,
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: numberCardIndex,
            ),
          ),
        )
      ],
    );
  }
}
