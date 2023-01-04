import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final widgetList = const [Section1(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return widgetList[index];
            },
            separatorBuilder: (context, index) {
              return listviewHeight;
            },
            itemCount: widgetList.length));
  }
}

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidhth,
        kHeight,
        const Icon(
          Icons.settings,
          color: iconColor,
        ),
        kWidhth,
        Text(
          'Smart Downloads',
          style: downSectionOneStyle,
        )
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {Key? key,
      this.angle = 0,
      required this.margin,
      required this.decoration,
      required this.size})
      : super(key: key);
  final double angle;
  final EdgeInsets margin;
  final BoxDecoration decoration;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          //  margin: margin,
          width: size.width,
          height: size.height,
          decoration: decoration,
        ),
      ),
    );
  }
}

//<----------------------------------------------------section2---------------------------------------------------------------------->
class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Indroducing Downloads For You',
          textAlign: TextAlign.center,
          style: downIndroTextStyle1,
        ),
        kHeight,
        Text(
          'We Will download a personalized selection of movies and shows for you,do there is always something to watch on your device',
          textAlign: TextAlign.center,
          style: downIndroTextStyle2,
        ),
        Container(
          width: size.width,
          height: size.height * 0.45,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.38,
                backgroundColor: downCircleAvatar,
              ),
              DownloadImageWidget(
                margin: const EdgeInsets.only(left: 180, top: 50),
                decoration: contDecorationDown1,
                angle: 23,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadImageWidget(
                margin: const EdgeInsets.only(right: 180, top: 50),
                decoration: contDecorationDown2,
                angle: -23,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadImageWidget(
                margin: const EdgeInsets.only(bottom: 10, top: 13),
                decoration: contDecorationDown3,
                size: Size(size.width * 0.4, size.width * 0.6),
              )
            ],
          ),
        ),
      ],
    );
  }
}
//<---------------------------------------------------section2--------------------------------------------------------------------------------->

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            height: 50,
            color: downButton1,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text(
              'Set up',
              style: textStyle1,
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: downButton2,
          onPressed: () {},
          height: 40,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Text(
            'See what you can download',
            style: textStyle2,
          ),
        )
      ],
    );
  }
}
