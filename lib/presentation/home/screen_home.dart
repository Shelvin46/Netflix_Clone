import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/main_home_card.dart';
import 'package:netflix/presentation/home/widgets/main_title_card.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

import '../widgets/main_title.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainTitleCard(title: "Releases in this Year"),
                const MainTitleCard(
                  title: "Trending Now",
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainTitile(title: "Top 10 TV Shows"),
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
                ),
                const MainTitleCard(
                  title: "South Indian cinema",
                ),
                const MainTitleCard(
                  title: "Tense Dramas",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
