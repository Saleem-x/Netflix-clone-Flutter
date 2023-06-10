import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/download/widget/midsection.dart';
import 'package:netflix/presentation/widgets/appbarwidget.dart';
import '../../core/constants.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  final _widgetlist = const [
    SmartDownloads(),
    SectionMid(),
    SectionBottom(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return _widgetlist[index];
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 25,
            );
          },
          itemCount: _widgetlist.length),
    );
  }
}

class SectionBottom extends StatelessWidget {
  const SectionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              height: 45,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: kbuttonblue,
              onPressed: () {},
              child: const Text(
                'Set up',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheigth,
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: MaterialButton(
            height: 45,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kwhite,
            onPressed: () {},
            child: const Text(
              'See What You can Download',
              style: TextStyle(
                  color: kblackcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadScreenImage extends StatelessWidget {
  const DownloadScreenImage({
    super.key,
    required this.size,
    required this.image,
    required this.rotation,
    required this.margin,
  });

  final Size size;
  final String image;
  final double rotation;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
