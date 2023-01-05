import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

final imageList = [
  'assets/horriimage1.jpg'
      'assets/horriimage2.jpg'
      'assets/horrimage3.jpg'
      'assets/horriimage4.jpg'
      'assets/horriimage5.jpg'
      'assets/horriimage6.jpg'
];

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTiltle(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const TopSearchTile();
              },
              separatorBuilder: (context, index) {
                return kHeight20;
              },
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: seachTile1,
        ),
        kWidhth,
        Expanded(
          child: Text(
            'Movie Name',
            style: tileText,
          ),
        ),
        const CircleAvatar(
          backgroundColor: searchTrailCircle,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: searchTrailInsideCircle,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: trailingColor,
            ),
          ),
        )
      ],
    );
  }
}
