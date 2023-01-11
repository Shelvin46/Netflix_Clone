import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/appplication/hot_and_new/hot_and_new_bloc.dart';
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
        body: const TabBarView(
          children: [
            CommingSoonList(
              key: Key('comming_soon'),
            ),
            EveryOneWatchingList(
              key: Key('everyone_is_watching'),
            )
            // EveryOneWatchingList(descriptionText: descriptionText),
          ],
        ),
      ),
    );
  }

  //Size size = MediaQuery.of(context).size;

}

// class EveryOneWatchingList extends StatelessWidget {
//   const EveryOneWatchingList({
//     Key? key,
//     required this.descriptionText,
//   }) : super(key: key);

//   final String descriptionText;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 3,
//       itemBuilder: (BuildContext context, index) {
//         return EveryOneWatching(descriptionText: descriptionText);
//       },
//     );
//   }
// }

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(LoadDataInCommingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(child: Text('Error'));
        } else if (state.commingSoonList.isEmpty) {
          return const Center(child: Text('Comming soon list empty'));
        } else {
          return ListView.separated(
              padding: EdgeInsets.only(top: 10),
              separatorBuilder: (context, index) {
                return kHeight;
              },
              itemBuilder: (context, index) {
                final movie = state.commingSoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                String month = '';
                String date = '';
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  final formattedDate =
                      DateFormat.yMMMMd('en_US').format(_date!);
                  month = formattedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase();
                  date = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  month = '';
                  date = '';
                }

                return CommingSoonWidget(
                  id: movie.id.toString(),
                  month: month,
                  day: date,
                  posterPath: '$imageAppendUrl${movie.posterPath}',
                  movieName: movie.originalTitle ?? 'No title',
                  descrption: movie.overview ?? 'No Descrption',
                );
              },
              itemCount: state.commingSoonList.length);
        }
      },
    );
  }
}

class EveryOneWatchingList extends StatelessWidget {
  const EveryOneWatchingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInEveryonesWatching());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(child: Text('Error'));
        } else if (state.everyOneIsWatchingList.isEmpty) {
          return const Center(child: Text('Comming soon list empty'));
        } else {
          return ListView.separated(
              padding: EdgeInsets.only(top: 10),
              separatorBuilder: (context, index) {
                return kHeight;
              },
              itemBuilder: (context, index) {
                final tv = state.everyOneIsWatchingList[index];
                return EveryOneWatching(
                  posterPath: '$imageAppendUrl${tv.posterPath}',
                  movieName: tv.originalName ?? 'No title',
                  descrption: tv.overview ?? 'No Descrption',
                );
              },
              itemCount: state.everyOneIsWatchingList.length);
        }
      },
    );
  }
}
