import 'package:flutter/material.dart';
import 'package:luvit/common/theme/color/luvit_colors.dart';
import 'package:luvit/common/theme/size_config.dart';
import 'package:luvit/common/theme/typography/text_styles.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.text, this.icon, this.backgroundColor, this.textColor, this.borderColor});
  final Widget? icon;
  final String text;
  final Color? backgroundColor, borderColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? LuvitColors.tagBackgroundColor,
        border: Border.all(color: borderColor ?? LuvitColors.tagBorderColor),
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            // icon,
            //
            // 4.horizontalGap,

            Text(
              text,
              style: LuvitTextStyle.body.medium.copyWith(fontSize: 14, fontWeight: FontWeight.w600, height: 21.0.toLineHeight(14), color: textColor ?? LuvitColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
