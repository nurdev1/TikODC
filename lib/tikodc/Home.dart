import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/components/video_component_player/video_component_player.dart';
import 'package:video_player/video_player.dart';

const List<Map<String, dynamic>> data = [
  {
    "media":"assets/videos/Alahuma.mp4",
  },
  {
    "media":"assets/videos/AlahumaSudais.mp4",
  },
  {
    "media":"assets/videos/Alhamdulah.mp4",
  },
  {
    "media":"assets/videos/Rabana.mp4",
  },
  {
    "media":"assets/videos/Salam.mp4",
  }
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView (
    scrollDirection: Axis.vertical,
      children: data.map((item){
        return VideoComponentPlayer(
          media: item["media"],
        );
      }).toList(),
    ),
    );
  }
}


