import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/colors/colors.dart';
import 'package:netflix/application/downloads/bloc/core/constants.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
import 'package:netflix/presentation/download/downloadscreen.dart';
import 'package:netflix/presentation/download/functions.dart';

class SectionMid extends StatelessWidget {
  const SectionMid({super.key});

  @override
  Widget build(BuildContext context) {
    List<DownloadMovies>? downloadmovies;
    final size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: getallmovies(),
      builder: (context, snapshot) {
        log('working');
        if (snapshot.connectionState == ConnectionState.waiting) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          downloadmovies = snapshot.data!;
        }
        return Column(
          children: [
            const Text(
              'Introducing Downloads for you',
              style: TextStyle(
                  color: kwhite, fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            kheigth,
            const Text(
              "We will download a personolised selection of\n movies and shows for you ,so there's \n always something to watch on your \ndevice",
              style: TextStyle(color: kgreycolor, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            kheigth,
            SizedBox(
              height: size.width,
              width: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: kgreycolor.withOpacity(0.5),
                      radius: size.width * 0.35,
                    ),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.5),
                    image: downloadmovies == null
                        ? netflixposter
                        : '$imageaAppenturl${downloadmovies![2].posterPath}',
                    rotation: -15,
                    margin: const EdgeInsets.only(right: 150, bottom: 0),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.5),
                    image: downloadmovies == null
                        ? netflixposter
                        : '$imageaAppenturl${downloadmovies![1].posterPath}',
                    rotation: 15,
                    margin: const EdgeInsets.only(left: 150, bottom: 0),
                  ),
                  DownloadScreenImage(
                    size: Size(size.width * 0.4, size.width * 0.55),
                    image: downloadmovies == null
                        ? netflixposter
                        : '$imageaAppenturl${downloadmovies![0].posterPath}',
                    rotation: 0,
                    margin: const EdgeInsets.only(top: 20),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
