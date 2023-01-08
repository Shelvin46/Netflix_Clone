import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/horriimage6.jpg"),
                    fit: BoxFit.cover))),
        Positioned(
          right: 10,
          bottom: 10,
          child: muteButtonNewHot,
        )
      ],
    );
  }
}
