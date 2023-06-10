import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/constants.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/functions/dramamoviesfunction.dart';
import 'package:netflix/core/functions/southmoviefunction.dart';
import 'package:netflix/domain/tense%20drama/movies/drama_movies/drama_movies.dart';
import 'package:netflix/domain/tense%20drama/southindianmovie/south_movies/south_movies.dart';
import 'package:netflix/presentation/widgets/maintitlewidget.dart';

class SouthMoviesWidget extends StatelessWidget {
  final String title;
  const SouthMoviesWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    List<SouthMovies>? southmovieslist;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              10,
              (index) => FutureBuilder(
                    future: getsouthMovies(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        southmovieslist = snapshot.data;
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 180,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    southmovieslist == null
                                        ? netflixposter
                                        : '$imageaAppenturl${southmovieslist![index].posterPath}',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    },
                  )),
        ),
      )
    ]);
  }
}
