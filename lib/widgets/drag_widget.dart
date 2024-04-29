import 'dart:developer' as dev;
import 'package:luvit/common/utils/common.dart';
import 'package:luvit/modules/home/data/model/profile.dart';
import 'package:luvit/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class DragWidget extends StatelessWidget {
  const DragWidget({
    Key? key,
    required this.profile,
    required this.index,
    required this.draggableItems,
    required this.swipeNotifier,
    this.isLastCard = false,
  }) : super(key: key);
  final Profile profile;
  final int index;
  final Function(int) draggableItems;
  final ValueNotifier<Swipe> swipeNotifier;
  final bool isLastCard;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        data: index,
        feedback: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) {
              return RotationTransition(
                turns: swipeNotifier.value != Swipe.none
                    ? swipeNotifier.value == Swipe.left
                        ? const AlwaysStoppedAnimation(-15 / 360)
                        : const AlwaysStoppedAnimation(15 / 360)
                    : const AlwaysStoppedAnimation(0),
                child: ProfileCard(profile: profile),
              );
            },
          ),
        ),
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          if (dragUpdateDetails.delta.dx > 0 &&
              dragUpdateDetails.globalPosition.dx >
                  MediaQuery.of(context).size.width / 2) {}
          if (dragUpdateDetails.delta.dx < 0 &&
              dragUpdateDetails.globalPosition.dx <
                  MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.left;
          }
        },
        onDragEnd: (drag) {
          final dx = drag..offset.dx;
          final dy = drag.offset.dy;
          const dragThreshold = 100.0; // Adjust this threshold as needed

          if (dy > dragThreshold) {
            swipeNotifier.value = Swipe.bottom;
            dev.log('bottom');
            draggableItems(index);
          } else if (dx.offset.dx < -dragThreshold) {
            draggableItems(index);
          } else {
            swipeNotifier.value = Swipe.none;
          }
        },
        childWhenDragging: Container(
          color: Colors.transparent,
        ),
        child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (BuildContext context, Swipe swipe, Widget? child) {
              return ProfileCard(profile: profile);
            }),
      ),
    );
  }
}
