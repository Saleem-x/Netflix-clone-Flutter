import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/search/search_movies/search_movies/search_movies.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchResultWidget extends StatelessWidget {
  final List<SearchMovies>? searchresult;
  const SearchResultWidget({super.key, required this.searchresult});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheigth20,
        Expanded(
          child: searchresult!.isEmpty
              ? const Center(
                  child: Text(
                  'Movie Not Found',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ))
              : GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.4,
                  children: List.generate(
                    searchresult!.length,
                    (index) {
                      return MainCard(
                        index: index,
                        image: searchresult == null
                            ? netflixposter
                            : '$imageaAppenturl${searchresult![index].posterPath}',
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String image;
  final int index;
  const MainCard({super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
