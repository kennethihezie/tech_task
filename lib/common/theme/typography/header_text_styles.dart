import 'package:flutter/material.dart';
import 'package:luvit/common/gen/fonts.gen.dart';
import 'package:luvit/common/theme/size_config.dart';

class TextHeaderStyle {
//================== PageHeader ==================//
  TextStyle get pageHeader1 => TextStyle(
      fontFamily: LuvitFonts.nunito,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      fontSize: SizeConfig.pxToTextSize(26),
      height: 31.72.toLineHeight(26));

  TextStyle get pageHeader2 => TextStyle(
      fontFamily: LuvitFonts.nunito,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 29.28.toLineHeight(24));

  //================== PageTitle ==================//

  TextStyle get pageTitle1 => TextStyle(
      fontFamily: LuvitFonts.nunito,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.3,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 24.40.toLineHeight(20));

  TextStyle get pageTitle2 => TextStyle(
      fontFamily: LuvitFonts.nunito,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.30,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 21.96.toLineHeight(18));
}
