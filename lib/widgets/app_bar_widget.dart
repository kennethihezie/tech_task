import 'package:flutter/material.dart';
import 'package:luvit/common/gen/assets.gen.dart';
import 'package:luvit/common/theme/color/luvit_colors.dart';
import 'package:luvit/common/theme/extensions/extensions.dart';
import 'package:luvit/common/theme/size_config.dart';
import 'package:luvit/common/theme/typography/text_styles.dart';


class AppBarWidget {
  static AppBar primaryAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              LuvitAssets.images.svg.location.svg(),

              2.horizontalGap,

              Text(
                '목이길어슬픈기린님의 새로운 스팟',
                style: LuvitTextStyle.header.pageHeader1.copyWith(color: LuvitColors.white, fontSize: 14, height: 20.0.toLineHeight(14)),
              ),
            ],
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  LuvitAssets.images.svg.starTop.svg(),

                  2.horizontalGap,

                  Text(
                    '323,233',
                    style: LuvitTextStyle.header.pageHeader1.copyWith(fontWeight: FontWeight.w500, color: LuvitColors.white, fontSize: 14, height: 16.71.toLineHeight(14)),
                  ),
                ],
              ),
            ),
          ),

          LuvitAssets.images.svg.notification.svg()
        ],
      ),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }
}
