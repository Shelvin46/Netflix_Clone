import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: searchBackColor,
              prefixIcon: searchPrefixStyle,
              suffixIcon: searchSuffixStyle,
              style: searchTextStyle,
            ),
            kHeight,
            // Expanded(child: const SearchIdleWidget())
            const Expanded(child: SearchResultWidget())
          ],
        ),
      )),
    );
  }
}
