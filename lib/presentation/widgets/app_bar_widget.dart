import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kWidhth,
          Text(
            title,
            style: styleText,
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: castIconColor,
            size: 30,
          ),
          kWidhth,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
          kWidhth
        ],
      ),
    );
  }
}
