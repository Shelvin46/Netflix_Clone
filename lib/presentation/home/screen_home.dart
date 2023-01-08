import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/main_number_card.dart';
import 'package:netflix/presentation/home/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                //print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView( 
                    children: const [
                      //kHeight,
                      BackgroundCard(),

                      MainTitleCard(title: "Releases in this Year"),
                      MainTitleCard(
                        title: "Trending Now",
                      ),
                      NumberCard(),
                      MainTitleCard(
                        title: "South Indian cinema",
                      ),
                      MainTitleCard(
                        title: "Tense Dramas",
                      )
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: navBar,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/netflix-logo.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: castIconColor,
                                    size: 30,
                                  ),
                                  kWidhth,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  kWidhth
                                ],
                              ),
                              kHeight,
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'TV Shows',
                                    style: someHeaders,
                                  ),
                                  Text(
                                    'Movies',
                                    style: someHeaders,
                                  ),
                                  Text(
                                    'Categories',
                                    style: someHeaders,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight
                ],
              ),
            ),
          ),
        );
      },
    ));
  }

  // ignore: non_constant_identifier_names

}
