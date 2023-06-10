import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/newandhot/comingsoonmovie/coming_soon_movie/coming_soon_movie.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';
import '../../../core/colors/colors.dart';

class ComingSoonWidget extends StatelessWidget {
  final List<ComingSoonMovie> comingsoonlist;
  final int index;
  const ComingSoonWidget({
    super.key,
    required this.comingsoonlist,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                textAlign: TextAlign.center,
                comingsoonlist[index].releaseDate!,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kgreycolor),
              ),
            ]),
          ),
          SizedBox(
            width: size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoCardWidget(
                    image:
                        imageaAppenturl + comingsoonlist[index].backdropPath!),
                kheigth,
                Row(
                  children: [
                    Text(
                      comingsoonlist[index].originalTitle!,
                      style: GoogleFonts.acme(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0),
                    ),
                    const Spacer(),
                    const Row(
                      children: [
                        MainscreenButtonWidget(
                          icon: Icons.add_alert_rounded,
                          title: 'Remaind me',
                          textsize: 10,
                          iconsize: 20,
                        ),
                        kwidth,
                        MainscreenButtonWidget(
                          icon: Icons.info,
                          title: 'Info',
                          textsize: 10,
                          iconsize: 20,
                        ),
                        kwidth
                      ],
                    )
                  ],
                ),
                kheigth,
                Text('Coming on Friday${comingsoonlist[index].releaseDate}'),
                kheigth,
                Text(
                  comingsoonlist[index].originalTitle!,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                kheigth,
                Text(
                  comingsoonlist[index].overview!,
                  style: const TextStyle(color: kgreycolor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
