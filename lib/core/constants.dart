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