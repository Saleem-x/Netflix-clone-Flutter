import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
import 'package:netflix/presentation/download/functions.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<DownloadMovies>? searchidlelist;
    return FutureBuilder(
      future: getallmovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          searchidlelist = snapshot.data;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTextTitle(title: 'Top Searches'),
            kheigth,
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => TopSearchItemTile(
                      index: index, movielist: searchidlelist),
                  separatorBuilder: (context, index) => kheigth20,
                  itemCount: 10),
            ),
          ],
        );
      },
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.index, this.movielist});
  final int index;
  final List<DownloadMovies>? movielist;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.4,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(movielist == null
                      ? netflixposter
                      : '$imageaAppenturl${movielist![index].posterPath}'),
                  fit: BoxFit.cover)),
        ),
        kwidth,
        Expanded(
            child: Text(
          movielist == null ? 'Movie Name' : movielist![index].originaltitle!,
          style: const TextStyle(
              color: kwhite, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
            backgroundColor: kwhite,
            radius: 25,
            child: Icon(
              Icons.play_circle_fill,
              color: kblackcolor,
              size: 50,
            ))
      ],
    );
  }
}
