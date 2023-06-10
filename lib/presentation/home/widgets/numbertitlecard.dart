import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/numbercard.dart';
import 'package:netflix/presentation/widgets/maintitlewidget.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: MainTitlewidget(title: 'Top 10 Tv Shows in India Today'),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              10,
              (index) => NumberCard(
                    index: index,
                  )),
        ),
      )
    ]);
  }
}
