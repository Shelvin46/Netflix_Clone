import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/constants.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key, required this.index});
  final int index;

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
              decoration: boxDecorationHome,
            ),
          ],
        ),
        Text(
          '$index',
          style: numberCardIndex,
        )
      ],
    );
  }
}
