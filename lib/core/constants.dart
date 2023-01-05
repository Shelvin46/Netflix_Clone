// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
//<------------------------------------------------------------------------------------Downloads Screen--------------------------------------------------------------->

const kWidhth = SizedBox(width: 10);
final styleText = GoogleFonts.montserrat(
  fontSize: 30,
  fontWeight: FontWeight.w900,
);
const kHeight = SizedBox(height: 15);
const listviewHeight = SizedBox(height: 20);

final textStyle1 = TextStyle(
  color: downTextstyle1,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
final textStyle2 = TextStyle(
  color: downTextStyle2,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
final contDecorationDown1 = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadfirst.jpg'),
  ),
);
final contDecorationDown2 = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadsecond.jpg'),
  ),
);
final contDecorationDown3 = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadthird.jpg'),
  ),
);
final downIndroTextStyle1 = TextStyle(
  color: downTextstyle1,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final downIndroTextStyle2 = TextStyle(
  color: downIndroText2,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
final downSectionOneStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
//<------------------------------------------------------------------Downloads Screen--------------------------------------------------------------------->
// ignore: prefer_const_declarations
final searchPrefixStyle = const Icon(
  CupertinoIcons.search,
  color: Colors.grey,
);
// ignore: prefer_const_declarations
final searchSuffixStyle = const Icon(
  CupertinoIcons.xmark_circle_fill,
  color: Colors.grey,
);
final searchTextStyle = TextStyle(color: Colors.white);
final searchText1 = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
final seachTile1 = BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/horriimage1.jpg'),
  ),
);
final seachTile2 = BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/horriimage2.jpg'),
  ),
);
final seachTile3 = BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/horrimage3.jpg'),
  ),
);
const kHeight20 = SizedBox(height: 20);
final tileText = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);
final resultImage = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  image: DecorationImage(
    fit: BoxFit.fill,
    image: AssetImage('assets/downloadthird.jpg'),
  ),
);
//<----------------------------------------------------------------Search Screen------------------------------------------------------------------------>
final muteButton = CircleAvatar(
  backgroundColor: Colors.black.withOpacity(0.5),
  radius: 30,
  child: IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.volume_off,
      size: 30,
      color: Colors.white,
    ),
  ),
);
const laughIcon1 = Icons.emoji_emotions;
const laughIcon2 = Icons.add;
const laughIcon3 = Icons.share;
const laughIcon4 = Icons.play_arrow;
final textStyleIcons = TextStyle(color: Colors.white, fontSize: 16);
//<--------------------------------------------------------------laughScreen--------------------------------------------------------------------------->
final BorderRadius boredRadiusHome = BorderRadius.circular(10);
final BoxDecoration boxDecorationHome = BoxDecoration(
  borderRadius: boredRadiusHome,
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadsecond.jpg'),
  ),
);
final numberCardSize = SizedBox(
  width: 50,
);
final TextStyle numberCardIndex = TextStyle(
  fontSize: 100,
  decoration: TextDecoration.none,
  color: Colors.black,
);
final BoxDecoration boxDecorationNumber = BoxDecoration(
  borderRadius: boredRadiusHome,
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadfirst.jpg'),
  ),
);
final BoxDecoration homeMainImage = BoxDecoration(
  borderRadius: boredRadiusHome,
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadthird.jpg'),
  ),
);
dynamic buttonPlayStyle =
    ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white));
final TextStyle playText = TextStyle(fontSize: 20, color: Colors.black);
