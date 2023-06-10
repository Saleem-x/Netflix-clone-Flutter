import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
import 'package:netflix/presentation/download/functions.dart';
import 'package:netflix/presentation/home/widgets/playbuttonwidget.dart';
import 'package:netflix/presentation/home/widgets/buttonwidget.dart';

class BackGroundCardWidget extends StatelessWidget {
  const BackGroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<DownloadMovies>? posterstolist;
    return Stack(
      children: [
        FutureBuilder(
          future: getallmovies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              posterstolist = snapshot.data;
            }
            return SizedBox(
              height: 600,
              child: Visibility(
                visible: posterstolist == null ? false : true,
                replacement: const Center(child: CircularProgressIndicator()),
                child: Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(posterstolist == null
                            ? netflixposter
                            : imageaAppenturl + posterstolist![0].posterPath!),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            );
          },
        ),
        const Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainscreenButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                  textsize: 17,
                  iconsize: 30,
                ),
                PlayButton(),
                MainscreenButtonWidget(
                  icon: Icons.info,
                  title: 'Info',
                  textsize: 17,
                  iconsize: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
