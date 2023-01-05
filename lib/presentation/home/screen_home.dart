import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/main_number_card.dart';
import 'package:netflix/presentation/home/widgets/main_title_card.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ListView(
            children: [
              //kHeight,
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: homeMainImage,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add,
                            )
                          ],
                        ),
                        _PlayButton()
                      ],
                    ),
                  )
                ],
              ),
              const MainTitleCard(title: "Releases in this Year"),
              const MainTitleCard(
                title: "Trending Now",
              ),
              const NumberCard(),
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
    );
  }

  // ignore: non_constant_identifier_names
  TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: buttonPlayStyle,
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: playTextColor,
      ),
      label: Text(
        'Play',
        style: playText,
      ),
    );
  }
}
