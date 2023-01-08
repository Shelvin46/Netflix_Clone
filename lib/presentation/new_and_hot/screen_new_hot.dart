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
            _buildCommingSoon(context),
            _buildEverryoneWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildCommingSoon(context) {
    //Size size = MediaQuery.of(context).size;
    return ListView.separated(
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

  Widget _buildEverryoneWatching() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, index) {
        return EveryOneWatching(descriptionText: descriptionText);
      },
    );
  }
}
