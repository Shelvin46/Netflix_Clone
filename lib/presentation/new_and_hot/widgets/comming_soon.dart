import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/main_buttons.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
    required this.descriptionText,
  }) : super(key: key);

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //kHeight,
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          //color: Colors.green,
          width: 70,
          // color: Colors.white,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Feb",
                style: commingSoonDateText,
              ),
              Text(
                '11',
                style: commingSoonDateText,
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VideoWidget(),
                Row(
                  children: [
                    Text(
                      "TALL GIRL 2",
                      style: contentText,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //textIconWidth,
                          const NewHotButtons(
                            color: newhotColor,
                            icon: Icons.alarm,
                            size: 20,
                            text: "Remaind Me",
                            textSize: 11,
                          ),
                          iconWidth,
                          const NewHotButtons(
                            color: newhotColor,
                            icon: Icons.info,
                            size: 20,
                            text: "Info",
                            textSize: 11,
                          ),
                          kWidhth
                        ],
                      ),
                    ),
                    kHeight
                  ],
                ),
                kHeight,
                const Text('Comming on Friday'),
                kHeight,
                Text(
                  "TALL GIRL 2",
                  style: contentTextGap,
                ),
                Text(
                  descriptionText,
                  style: descrptionStyle,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
