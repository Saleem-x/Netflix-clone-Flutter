import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/functions/topratedfunction.dart';
import 'package:netflix/domain/top%20rated/top_rated_movies/top_rated_movies.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    List<TopRatedMovies>? topratedmovies;
    return FutureBuilder(
      future: gettopratedmovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          topratedmovies = snapshot.data!;
        }
        return Stack(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 50,
                  height: 150,
                ),
                Container(
                  height: 180,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                          topratedmovies == null
                              ? netflixposter
                              : '$imageaAppenturl${topratedmovies![index].posterPath}',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 5,
              bottom: 0,
              child: BorderedText(
                strokeWidth: 5,
                strokeColor: kwhite,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      color: kblackcolor,
                      decoration: TextDecoration.none,
                      decorationColor: kwhite),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
