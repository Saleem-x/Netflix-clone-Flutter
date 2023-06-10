import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/trending.dart';
import 'package:netflix/presentation/home/widgets/backgrouncardwidget.dart';
import 'package:netflix/presentation/home/widgets/numbertitlecard.dart';
import 'package:netflix/presentation/home/widgets/pastrelease.dart';
import 'package:netflix/presentation/home/widgets/sothmovieswidget.dart';
import 'package:netflix/presentation/home/widgets/tensedrama.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);
ValueNotifier<List<String>> imagelistlistener = ValueNotifier([]);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollnotifier,
      builder: (context, value, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollnotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollnotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackGroundCardWidget(),
                  PastRelease(title: 'Released In the Past Year'),
                  kheigth,
                  TrendingMovies(title: 'Trending '),
                  kheigth,
                  NumberTitleCard(),
                  kheigth,
                  TenseDrama(title: 'Tense Drama'),
                  kheigth,
                  SouthMoviesWidget(title: 'South Indian Cinema'),
                ],
              ),
              scrollnotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      height: 80,
                      width: double.infinity,
                      color: kblackcolor.withOpacity(0.5),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Netflix_2015_N_logo.svg.png',
                                height: 30,
                                width: 30,
                              ),
                              const Spacer(),
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
                                        'assets/images/Netflix-avatar.png')),
                              ),
                              kwidth
                            ],
                          ),
                        ),
                        kheigth,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Tv Shows',
                              style: hometitletext,
                            ),
                            Text(
                              'Movies',
                              style: hometitletext,
                            ),
                            Text(
                              'Categories',
                              style: hometitletext,
                            ),
                          ],
                        )
                      ]),
                    )
                  : kheigth,
            ],
          ),
        );
      },
    ));
  }
}
