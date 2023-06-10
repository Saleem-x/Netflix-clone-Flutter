import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/functions/searchfunction.dart';
import 'package:netflix/domain/search/search_movies/search_movies/search_movies.dart';
import 'package:netflix/presentation/search/widgets/searchidle.dart';
import 'package:netflix/presentation/search/widgets/searchresultwidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<List<SearchMovies>>> searchedlist = ValueNotifier([]);
    final controller = TextEditingController();
    List<SearchMovies>? searchresult;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                controller: controller,
                backgroundColor: kgreycolor.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgreycolor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgreycolor,
                ),
                style: const TextStyle(color: kwhite),
                onChanged: (value) async {
                  searchresult = await getsearchedmovies(value);
                  if (searchresult!.isNotEmpty) {
                    searchedlist.value.add(searchresult!);
                  }
                  searchedlist.notifyListeners();
                },
              ),
              kheigth,
              Expanded(
                child: Visibility(
                  child: ValueListenableBuilder(
                    valueListenable: searchedlist,
                    builder: (context, value, child) {
                      if (controller.text.isEmpty) {
                        searchedlist.value.clear();
                      } else if (searchedlist.value.isEmpty) {
                        searchresult!.clear();
                      }
                      return value.isEmpty
                          ? const SearchIdleWidget()
                          : SearchResultWidget(
                              searchresult: searchresult ?? [],
                            );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
