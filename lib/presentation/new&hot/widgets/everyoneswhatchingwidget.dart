import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/everyoneswhatching/everyonewhathingmovie.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

class EveryOnesWhatchingwidget extends StatelessWidget {
  final List<EveryOnesWatching> everyoneswatchinglist;
  final int index;
  const EveryOnesWhatchingwidget({
    super.key,
    required this.index,
    required this.everyoneswatchinglist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth,
          Text(
            everyoneswatchinglist[index].originalName!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth,
          Text(
            everyoneswatchinglist[index].overview!,
            style: const TextStyle(color: kgreycolor),
          ),
          kheight50,
          VideoCardWidget(
              image: everyoneswatchinglist[index].backdropPath == null
                  ? netflixposter
                  : imageaAppenturl +
                      everyoneswatchinglist[index].backdropPath!),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainscreenButtonWidget(
                icon: Icons.share,
                title: 'share',
                textsize: 16,
                iconsize: 22,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.add,
                title: 'My List',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
            ],
          )
        ],
      ),
    );
  }
}
