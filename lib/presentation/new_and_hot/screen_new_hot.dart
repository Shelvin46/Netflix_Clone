import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/comming_soon.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  final String descriptionText =
      "Tall Girl is a 2019 American teen romantic comedy film directed by Nzingha Stewart, from a screenplay by Sam Wolfson. The film stars Ava Michelle, Griffin Gluck, Sabrina Carpenter, Paris Berelc, Luke Eisner, Clara Wilsey, Anjelika Washington, Rico Paris, Angela Kinsey, and Steve Zahn.";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: styleText,
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: castIconColor,
                size: 30,
              ),
              kWidhth,
              Container(
                width: 30,
                //height: 10,
                color: Colors.blue,
              ),
              kWidhth
            ],
            //titleSpacing: 12,

            //toolbarHeight: 15,
            //flexibleSpace: FlexibleSpaceBar(),
            bottom: TabBar(
                isScrollable: true,
                indicator: newhotBottomDec,
                labelColor: bottomLabelColor,
                labelStyle: bottomLabelStyle,
                unselectedLabelColor: unbottomLabelColor,
                tabs: const [
                  Tab(
                    text: "🍿 Comming Soon ",
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            CommingSoonList(descriptionText: descriptionText),
            EveryOneWatchingList(descriptionText: descriptionText),
          ],
        ),
      ),
    );
  }

  //Size size = MediaQuery.of(context).size;

}

class EveryOneWatchingList extends StatelessWidget {
  const EveryOneWatchingList({
    Key? key,
    required this.descriptionText,
  }) : super(key: key);

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, index) {
        return EveryOneWatching(descriptionText: descriptionText);
      },
    );
  }
}

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({
    Key? key,
    required this.descriptionText,
  }) : super(key: key);

  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      padding: EdgeInsets.only(top: 10),
        separatorBuilder: (context, index) {
          return kHeight;
        },
        // shrinkWrap: true,
        //physics: ScrollPhysics(),
        // scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return CommingSoonWidget(
            descriptionText: descriptionText,
          );
        },
        itemCount: 10);
  }
}
