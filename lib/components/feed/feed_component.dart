import 'package:flutter/cupertino.dart';
import 'package:tikodc/components/profile/Profile_component.dart';
import 'package:tikodc/components/sideBar/SideBarCompenent.dart';
import 'package:tikodc/components/video_component_player/video_component_player.dart';
import 'package:tikodc/components/widget/entaille.dart';

class FeedComponent extends StatelessWidget {

  final Map<String, dynamic> item;

  const FeedComponent(
      {Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoComponentPlayer(media:item['media'],
        ),
        Positioned(
          bottom: 120.0,
            left: 20.0,
            right: 100.0,
            child: ProfileComponent(item:item),
        ),
        Positioned(
          bottom: 100.0,
          right: 20.0,
          child: SideBarCompnent(
              item:item),
        ),
        EnteteWidget()
      ],
    );
  }
}
