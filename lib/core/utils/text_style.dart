
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

abstract class Styles {
  static  TextStyle textStyle20 =  GoogleFonts.genos(
      fontSize: 20.sp, fontWeight: FontWeight.normal, color: Colors.white);
  static  TextStyle textStyle25 =  GoogleFonts.poppins(
      fontSize: 25.sp, fontWeight: FontWeight.w400, color: Colors.white);
  static  TextStyle textStyle18 =  GoogleFonts.montserrat(
      fontSize: 18.sp, fontWeight: FontWeight.normal, color: Colors.grey);
  static  TextStyle textStyle =  GoogleFonts.montserrat(
     fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white);
  static  TextStyle textStyle30 = GoogleFonts.genos(
      fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white);
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static  TextStyle textStyle16 =  GoogleFonts.poppins(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.white);
}

const TextStyle textStyle = TextStyle();