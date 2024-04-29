import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:luvit/common/gen/assets.gen.dart';
import 'package:luvit/common/theme/color/luvit_colors.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Colors.black,
      shadowColor: LuvitColors.shadowColor,
      color: LuvitColors.inactiveColor,
      style: TabStyle.fixedCircle,
      cornerRadius: 12,
      activeColor: LuvitColors.primary,
      items: [
        TabItem(icon: LuvitAssets.images.svg.home.svg(), title: '홈'),
        TabItem(icon: LuvitAssets.images.svg.locationBottom.svg(), title: '스팟'),
        TabItem(icon: LuvitAssets.images.png.star.image()),
        TabItem(icon: LuvitAssets.images.svg.bottomChat.svg(), title: '채팅'),
        TabItem(icon: LuvitAssets.images.svg.profile.svg(), title: '마이'),
      ],
      onTap: (index) => {},
    );
  }
}
