import 'package:flutter/cupertino.dart';
import 'package:tikodc/components/widget/Avatar_widget.dart';
import 'package:tikodc/components/widget/Comment_widget.dart';
import 'package:tikodc/components/widget/Musique.dart';
import 'package:tikodc/components/widget/Share.dart';
import 'package:tikodc/components/widget/favotite.dart';
import 'package:tikodc/components/widget/like_widget.dart';

class SideBarCompnent
    extends StatelessWidget {

  final Map<String, dynamic> item;

  const SideBarCompnent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        AvatarWidget(
          profile: item['profile'],
        ),

        LikeWidget(
          count:item['likeCount'],
          onPressed: () => print(""),
        ),
        CommentWidget(
          count:item['likeComment'],
          onPressed: ()  => print("comment"),
        ),
        FavoriteWidget(
          count: item['favoCount'],
          onPressed: () => print("favo"),
        ),
        ShareWidget(
          count: item['sedCount'],
          onPressed:() => print("send"),
        ),
         MusiqueWidget(
          ),


      ],
    );
  }
}
