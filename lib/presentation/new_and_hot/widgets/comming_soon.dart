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
    return Container(
      height: 600,
      child: Column(
        children: [
          kHeight,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 1070),
                child: commingSoonDate,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 720),
                child: Container(
                  color: Colors.red,
                  width: size.width - 50,
                  height: 450,
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VideoWidget(),
                      kHeight,
                      Row(
                        children: [
                          Text(
                            "TALL GIRL 2",
                            style: contentText,
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                textIconWidth,
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
                              ],
                            ),
                          )
                        ],
                      ),
                      kHeight,
                      const Text('Comming on Friday'),
                      kHeight,
                      Text(
                        "TALL GIRL 2",
                        style: contentTextGap,
                      ),
                      //kHeight,
                      Text(
                        descriptionText,
                        style: descrptionStyle,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
