import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

import '../../widgets/main_title.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitile(title: "Top 10 TV Shows"),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return NumberTitleCard(
                  index: index,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 13,
                );
              },
              itemCount: 10),
        ),
      ],
    );
  }
}
