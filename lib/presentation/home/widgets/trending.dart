import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/constants.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
import 'package:netflix/presentation/download/functions.dart';
import 'package:netflix/presentation/widgets/maintitlewidget.dart';

class TrendingMovies extends StatelessWidget {
  final String title;
  const TrendingMovies({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    List<DownloadMovies>? downloadmovies;
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
                    future: getallmovies(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        downloadmovies = snapshot.data!;
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
                                    downloadmovies == null
                                        ? netflixposter
                                        : '$imageaAppenturl${downloadmovies![index].posterPath}',
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
