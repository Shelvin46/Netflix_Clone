import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: addIconColor,
          size: 30,
        ),
        Text(
          text,
          style: myListText,
        )
      ],
    );
  }
}
