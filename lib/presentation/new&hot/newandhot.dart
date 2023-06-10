import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/functions/comingsoonfunction.dart';
import 'package:netflix/core/functions/everyoneswatchingfunction.dart';
import 'package:netflix/domain/everyoneswhatching/everyonewhathingmovie.dart';
import 'package:netflix/domain/newandhot/comingsoonmovie/coming_soon_movie/coming_soon_movie.dart';
import 'package:netflix/presentation/new&hot/widgets/comingsoonwidget.dart';
import 'package:netflix/presentation/new&hot/widgets/everyoneswhatchingwidget.dart';
import '../../core/constants.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              'Hot & New',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: Colors.white,
              ),
              kwidth,
              SizedBox(
                height: 30,
                width: 30,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/images/Netflix-avatar.png',
                      height: 30,
                      width: 30,
                    )),
              ),
              kwidth
            ],
            bottom: TabBar(
                labelColor: kblackcolor,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: kwhite,
                indicator:
                    BoxDecoration(color: kwhite, borderRadius: kradius30),
                tabs: const [
                  Tab(text: "🍿coming soon"),
                  Tab(
                    text: "👀Everyone's Whatching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
            children: [_builComingsoon(), _buildEveryonsWhatching()]),
      ),
    );
  }
}

Widget _builComingsoon() {
  List<ComingSoonMovie>? comingSoonMovies;
  return FutureBuilder(
    future: getcomingsoonMovies(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done &&
          snapshot.data != null) {
        comingSoonMovies = snapshot.data;
      }
      return Visibility(
        visible: comingSoonMovies == null ? false : true,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: comingSoonMovies == null ? 0 : comingSoonMovies!.length,
          itemBuilder: (context, index) {
            return ComingSoonWidget(
              comingsoonlist: comingSoonMovies!,
              index: index,
            );
          },
        ),
      );
    },
  );
}

Widget _buildEveryonsWhatching() {
  List<EveryOnesWatching>? everyoneswatchinglist;
  return FutureBuilder(
    future: getEveryOnesWatching(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done &&
          snapshot.data != null) {
        everyoneswatchinglist = snapshot.data;
      }
      return Visibility(
        visible: everyoneswatchinglist == null ? false : true,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount:
              everyoneswatchinglist == null ? 0 : everyoneswatchinglist!.length,
          itemBuilder: (context, index) {
            return EveryOnesWhatchingwidget(
                everyoneswatchinglist: everyoneswatchinglist!, index: index);
          },
        ),
      );
    },
  );
}
