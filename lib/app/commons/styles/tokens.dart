// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tp {
  static final size = _TpSizes._();
  static final space = _TpSpace._();
  static final fonts = _TpFonts._();
  static final radii = _TpRadii._();
  static final duration = _TpDuration._();
  static final colors = _TpColors._();
  static final fontSizes = _TpFontSizes._();
  static final lineHeights = _TpLineHeights._();
  static final fontWeights = _TpFontWeights._();
  static final assets = _TpAssets._();
  static final opacity = _TpOpacity._();
  static final themeColors = _TpThemeColors._();
  static final thinckness = _TpThinckness._();
  static final letterSpacing = _TpLetterSpacing._();
}

class _TpAssets {
  _TpAssets._();
  final onboarding = 'assets/onboarding/characters.png';
}

class _TpColors {
  _TpColors._();
  final white = const Color(0xffffffff);
  final white10 = const Color(0xffF6FBFF);
  final white20 = const Color(0xffE2EDF5);

  final black = const Color(0xff000000);

  final blue = const Color(0xff0573f3);
  final blue90 = const Color(0xffD5E4FB);

  final grey = const Color(0xff213241);
  final grey70 = const Color(0xff424F63);
  final grey50 = const Color(0xff728197);
  final grey20 = const Color(0xff8593A8);
  final grey10 = const Color(0xffDBE2EC);

  final green = const Color(0xff00CC5E);

  final red = const Color(0xffE24444);
}

class _TpThemeColors {
  _TpThemeColors._();
  final background = Tp.colors.white20;
}

class _TpFonts {
  _TpFonts._();
  final app = 'Poppins';
  final alternative = 'Roboto';
}

class _TpFontWeights {
  _TpFontWeights._();
  final thin = FontWeight.w100;
  final light = FontWeight.w300;
  final regular = FontWeight.w400;
  final normal = FontWeight.normal;
  final medium = FontWeight.w500;
  final semibold = FontWeight.w600;
  final bold = FontWeight.w700;
}

class _TpOpacity {
  _TpOpacity._();
  final medium = 0.5;
}

class _TpFontSizes {
  _TpFontSizes._();
  final ref2 = 2.00.sp;
  final ref4 = 4.00.sp;
  final ref6 = 6.00.sp;
  final ref8 = 8.00.sp;
  final ref10 = 10.00.sp;
  final ref12 = 12.00.sp;
  final ref14 = 14.00.sp;
  final ref16 = 16.00.sp;
  final ref18 = 18.00.sp;
  final ref20 = 20.00.sp;
  final ref22 = 22.00.sp;
  final ref24 = 24.00.sp;
  final ref26 = 26.00.sp;
}

class _TpLineHeights {
  _TpLineHeights._();
  final xSmall = 1.5;
  final small = 1.8;
  final regular = 2.0;
  final medium = 2.3;
  final tall = 2.6;
  final xTall = 3.1;
}

class _TpRadii {
  _TpRadii._();
  final ref4 = 4.00;
  final ref6 = 6.00;
  final ref8 = 8.00;
  final ref10 = 10.00;
  final ref12 = 12.00;
  final ref48 = 48.00;
  final ref99 = 99.00;
}

class _TpDuration {
  _TpDuration._();
  final ref4000 = 4000;
}

class _TpSizes {
  _TpSizes._();
  final ref2 = 2.00;
  final ref4 = 4.00;
  final ref8 = 8.00;
  final ref10 = 10.00;
  final ref12 = 12.00;
  final ref14 = 14.00;
  final ref16 = 16.00;
  final ref22 = 22.00;
  final ref24 = 24.00;
  final ref30 = 30.00;
  final ref32 = 32.00;
  final ref36 = 36.00;
  final ref44 = 44.00;
  final ref48 = 48.00;
  final ref58 = 58.00;
  final ref64 = 64.00;
  final ref68 = 68.00;
  final ref72 = 72.00;
  final ref78 = 78.00;
  final ref90 = 90.00;
  final ref96 = 96.00;
  final ref110 = 110.00;
  final ref120 = 120.00;
  final ref160 = 160.00;
  final ref200 = 200.00;
  final ref280 = 280.00;
}

class _TpSpace {
  _TpSpace._();
  final ref2 = 2.00;
  final ref4 = 4.00;
  final ref6 = 6.00;
  final ref8 = 8.00;
  final ref10 = 10.00;
  final ref12 = 12.00;
  final ref14 = 14.00;
  final ref16 = 16.00;
  final ref18 = 18.00;
  final ref22 = 22.00;
  final ref24 = 24.00;
  final ref28 = 28.00;
  final ref30 = 30.00;
  final ref32 = 32.00;
  final ref40 = 40.00;
  final ref48 = 48.00;
  final ref50 = 50.00;
  final ref64 = 64.00;
  final ref120 = 120.00;
  final ref220 = 220.00;
}

class _TpThinckness {
  _TpThinckness._();

  final thin = 0.5;
  final light = 0.7;
  final regular = 1.0;
  final medium = 1.5;
}

class _TpLetterSpacing {
  _TpLetterSpacing._();

  final tight = 0.1;
  final semitight = 0.15;
  final wide = 0.25;
  final extrawide = 0.5;
}
