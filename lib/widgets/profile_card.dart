import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luvit/common/gen/assets.gen.dart';
import 'package:luvit/common/theme/color/luvit_colors.dart';
import 'package:luvit/common/theme/extensions/extensions.dart';
import 'package:luvit/common/theme/size_config.dart';
import 'package:luvit/common/theme/typography/text_styles.dart';
import 'package:luvit/modules/home/data/model/profile.dart';
import 'package:luvit/modules/home/presentation/providers/home_providers.dart';
import 'package:luvit/widgets/tag_widget.dart';


class ProfileCard extends ConsumerWidget {
  const ProfileCard({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(homeViewModel);

    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 40, right: 16, left: 16),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: profile.image,
            ),
          ),

          Positioned(
            top: 50,
            left: 20,
            child: Row(
              children: List.generate(
                vm.uiState.profiles.length,
                    (index) => Container(
                  width: 60, // Customize the width of the status indicator bar
                  height: 4, // Cus
                  decoration: BoxDecoration(
                      color: index <  vm.uiState.profiles.length
                          ? (index == vm.currentIndex ? Colors.pink : LuvitColors.progressColor)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(4)
                  ),
                  margin:
                  const EdgeInsets.only(right: 10), // Adjust spacing between bars
                ),
              ),
            ),
          ),


          const Positioned(
              bottom: 60,
              left: 150,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              )),


          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    LuvitColors.transparent,
                    LuvitColors.black.withOpacity(0.2),
                    LuvitColors.black.withOpacity(0.5),
                    LuvitColors.black.withOpacity(1)
                  ], // Half white and half black
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: MediaQuery.of(context).size.height * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  LuvitAssets.images.svg.dullStar.svg(),

                                  4.horizontalGap,

                                  Text(
                                    '29,930',
                                    style: LuvitTextStyle.body.medium.copyWith(fontSize: 14, fontWeight: FontWeight.w500, height: 16.71.toLineHeight(14), color: LuvitColors.white),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                       4.verticalGap,

                      Text(profile.title!, style: LuvitTextStyle.header.pageTitle1.copyWith(fontSize: 28, height: 33.6.toLineHeight(28), color: LuvitColors.white)),

                      if (profile.tags!.isNotEmpty) ...[
                        TagWidget(text: profile.tags![0], backgroundColor: LuvitColors.pinkBackground.withOpacity(0.5), borderColor: LuvitColors.pinkBorder, textColor: LuvitColors.textPink,),

                        5.verticalGap,

                        Row(
                          children: [
                            TagWidget(text: profile.tags![1]),

                            5.verticalGap,

                            TagWidget(text: profile.tags![2]),

                          ],
                        ),

                        5.verticalGap,

                        TagWidget(text: profile.tags![3]),

                        5.verticalGap,

                        Row(
                          children: [
                            TagWidget(text: profile.tags![4]),

                            5.horizontalGap,

                            TagWidget(text: profile.tags![5]),
                          ],
                        ),
                      ] else
                        Text(profile.text!, style: LuvitTextStyle.header.pageTitle1.copyWith(fontWeight: FontWeight.w300, fontSize: 15, height: 22.5.toLineHeight(15), color: LuvitColors.textGrey),)

                    ],),

                  LuvitAssets.images.svg.love.svg()
                ],
              ),
            )
          ),


        ],
      ),
    );
  }
}
