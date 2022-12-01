import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../tikodc/Coonexion.dart';
import '../widget/Musique.dart';

class Profil extends StatelessWidget {

 // final Map<String, dynamic> profile;
//  final Map<String, dynamic> item;

  const Profil({Key? key}) : super(key: key);
//,required this.profile ,required this.item
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profil",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30,

              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Connexion()));
            },
            child: IconButton(onPressed: (){},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size:25.0,
              ),
            ),
          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => print("go to usser's profile"),
            child:  Container(
              padding: const EdgeInsets.all(3.0),
               alignment: Alignment.center,
               child: const CircleAvatar(
                radius: 35.0,

               // backgroundImage: AssetImage(( profile["avatar"]),
               // ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: const [
                /*CommentWidget(
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
                ),*/
                MusiqueWidget(
                ),
                MusiqueWidget(
                ),
                MusiqueWidget(
                ),
              ],
            ),
          )
        ],
        ),
      ),
    );
  }
}
