import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/main_buttons.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({
    Key? key,
    required this.descriptionText,
  }) : super(key: key);

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      kHeight,
      Padding(
        padding: textGap.padding,
        child: Text(
          "Friends",
          style: contentTextGap,
        ),
      ),
      Padding(
        padding: textGap.padding,
        child: Text(
          descriptionText,
          style: descrptionStyle,
        ),
      ),
      videoGap,
      const VideoWidget(),
      kHeight,
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          NewHotButtons(
            color: newhotColor,
            icon: Icons.share,
            size: 28,
            text: "Share",
            textSize: 16,
          ),
          kWidhth,
          NewHotButtons(
            color: newhotColor,
            icon: Icons.add,
            size: 32,
            text: "My List",
            textSize: 16,
          ),
          kWidhth,
          NewHotButtons(
            color: newhotColor,
            icon: Icons.play_arrow,
            size: 34,
            text: "Play",
            textSize: 16,
          ),
          kWidhth
          //CustomButtonWidget(text: text, icon: icon)
        ],
      )
    ]);
  }
}
