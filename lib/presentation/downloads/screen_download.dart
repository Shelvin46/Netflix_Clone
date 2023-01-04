import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg"
        "https://www.themoviedb.org/t/p/w220_and_h330_face/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg"
        "https://www.themoviedb.org/t/p/w220_and_h330_face/gBBCBMXKzWRADtliUYfV69aVIcz.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: const [
              kWidhth,
              kHeight,
              Icon(
                Icons.settings,
                color: iconColor,
              ),
              kWidhth,
              Text('Smart Downloads')
            ],
          ),
          Text('Indroducing Downloads For You'),
          Text(
              'We Will download a personalized selection of movies and shows for you,do there is always something to watch on your device'),
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.37,
                ),
                Container(
                  width: size.width * 0.4,
                  height: size.width * 0.58,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        imageList[0],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          MaterialButton(
            color: downButton1,
            onPressed: () {},
            child: Text(
              'Setup',
              style: textStyle1,
            ),
          ),
          MaterialButton(
            color: downButton2,
            onPressed: () {},
            child: Text(
              'See what you can download',
              style: textStyle2,
            ),
          )
        ],
      ),
    );
  }
}
