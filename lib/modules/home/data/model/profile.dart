import 'package:flutter/cupertino.dart';
import 'package:luvit/common/gen/assets.gen.dart';

class Profile {
  const Profile({
    this.name,
    this.imageTitle,
    this.title,
    this.text,
    this.tags,
    this.distance,
    this.image,
  });
  final String? name, distance, imageTitle, title, text;
  final List<String>? tags;
  final Widget? image;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    name: json['name'],
    imageTitle: json['imageTitle'],
    title: json['title'],
    text: json['text'],
    tags: json['tags'],
    distance: json['distance'],
    image: Image.network(json['image'])
  );
}
