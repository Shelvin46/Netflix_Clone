import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainHomeCard extends StatelessWidget {
  const MainHomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      // color: Colors.white,
      decoration: boxDecorationHome,
    );
  }
}
