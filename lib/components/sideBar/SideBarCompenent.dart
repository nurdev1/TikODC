import 'package:flutter/cupertino.dart';
import 'package:tikodc/components/widget/Avatar_widget.dart';
import 'package:tikodc/components/widget/Comment_widget.dart';
import 'package:tikodc/components/widget/like_widget.dart';

class SideBarCompnent
    extends StatelessWidget {

  final Map<String, dynamic> item;

  const SideBarCompnent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Padding(
          padding: EdgeInsets.only(
          bottom: 20.0,
        ),
          child:  AvatarWidget(
              profile: item['profile'],
          ),
        ),

        Padding(padding: EdgeInsets.only(
          bottom: 20.0,
        ),
          child: LikeWidget(
            count:item['likeCount'],
            onPressed: () => print(""),
          ),
        ),
        Padding(padding: EdgeInsets.only(
            bottom: 20.0,
        ),
          child: CommentWidget(
            count:item['likeComment'],
            onPressed: ()  => print("comment"),
          ),
        ),

      ],
    );
  }
}
