import 'package:luvit/common/gen/assets.gen.dart';
import 'package:luvit/modules/home/data/model/profile.dart';

class LocalDataSource {
  final localData = [
    Profile(
      imageTitle: '101_Main Profile 01',
      title: '잭과분홍콩나물 25',
      text: '서울·2km 거리에 있음',
      name: '',
      tags: [],
      distance: '10',
      image: LuvitAssets.images.png.item1.image(),
    ),
    Profile(
      imageTitle: '102_Main Profile 02',
      title: '잭과분홍콩나물 25',
      text:
      '서로 아껴주고 힘이 되어줄 사람 찾아요\n선릉으로 직장 다니고 있고 여행 좋아해요\n이상한 이야기하시는 분 바로 차단입니다',
      name: '',
      distance: '10',
      tags: [],
      image: LuvitAssets.images.png.item2.image(),
    ),
    Profile(
      imageTitle: '103_Main Profile 03',
      title: '잭과분홍콩나물 25',
      text: '',
      name: '',
      tags: [
        '💖 진지한 연애를 찾는 중',
        '🍸 전혀 안 함',
        '🚬 비흡연',
        '💪🏻 매일 1시간 이상',
        '🤝 만나는 걸 좋아함',
        "INFP"
      ],
      distance: '10',
      image: LuvitAssets.images.png.item3.image(),
    ),
  ];
}
