import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                muteButton,
                //rightside
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/downloadsecond.jpg'),
                      ),
                    ),
                    VideoACtionWidget(
                      icon: laughIcon1,
                      title: "LOL",
                    ),
                    // kHeight,
                    VideoACtionWidget(
                      icon: laughIcon2,
                      title: "My List",
                    ),
                    VideoACtionWidget(
                      icon: laughIcon3,
                      title: "Share",
                    ),
                    VideoACtionWidget(
                      icon: laughIcon4,
                      title: "Play",
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoACtionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoACtionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: laughIconColor,
            size: 30,
          ),
          Text(
            title,
            style: textStyleIcons,
          ),
          kHeight
        ],
      ),
    );
  }
}
