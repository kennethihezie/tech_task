import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luvit/common/theme/color/luvit_colors.dart';
import 'package:luvit/common/theme/size_config.dart';
import 'package:luvit/common/theme/typography/text_styles.dart';
import 'package:luvit/common/utils/common.dart';
import 'package:luvit/modules/home/presentation/providers/home_providers.dart';
import 'package:luvit/widgets/drag_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    ref.read(homeViewModel.notifier).init(this);
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(homeViewModel);

    return vm.uiState.profiles.isEmpty ?  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('추천 드릴 친구들을 준비 중이에요',
              textAlign: TextAlign.center,
              style: LuvitTextStyle.header.pageHeader1.copyWith(color: LuvitColors.white, fontSize: 24, height: 31.2.toLineHeight(14))),

          Text('매일 새로운 친구들을 소개시켜드려요',
              textAlign: TextAlign.center,
              style: LuvitTextStyle.header.pageHeader1.copyWith(color: LuvitColors.textGrey, fontSize: 24, height: 31.2.toLineHeight(14))),
        ],
      ),
    ) : PageView(
      padEnds: true,
      controller: PageController(
        viewportFraction: 0.9,
        initialPage: 0,
      ),
      children: [
        Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GestureDetector(
                onTapUp: (details) => vm.onTapUp(context: context, details: details),
                child: DragWidget(
                  draggableItems: (val) => vm.onItemDrag(val),
                  profile: vm.uiState.profiles[vm.currentIndex],
                  index: vm.currentIndex,
                  swipeNotifier: ValueNotifier(Swipe.none),
                  isLastCard: vm.currentIndex == vm.uiState.profiles.length - 1,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}


