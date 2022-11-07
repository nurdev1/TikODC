import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/components/feed/feed_component.dart';


const List<Map<String, dynamic>> data = [
  {
    "profile": {"username":"Abdrahamane",
    "avatar":"assets/images/a.jpg",},
    "media":"assets/videos/Alahuma.mp4",
    "description": "Un Dua",
    "likeCount":100,
    "likeComment":99,
    "sedCount":645,
    "favoCount":554,
  },
  {
    "profile": {"username":"Bintou",
  "avatar":"assets/images/c.jpg",},
    "media":"assets/videos/AlahumaSudais.mp4",
    "description": "Passez une agréable journée avec Sudais",
    "likeCount":600000,
    "likeComment":12,
    "sedCount":666,
    "favoCount":644,
  },
  {
    "profile": {"username":"Fodié", "avatar":"assets/images/e.jpg",},
    "media":"assets/videos/Alhamdulah.mp4",
    "description": "Al-hamdu li-l-lâhi",
    "likeCount":87,
    "likeComment":80,
    "sedCount":66,
    "favoCount":764,
  },
  {
    "profile": {"username":"Aïchat",
  "avatar":"assets/images/d.jpg",},
    "media":"assets/videos/Rabana.mp4",
    "description": "Demande du pardon du Tout Puissant",
    "likeCount":1700,
    "likeComment":99,
    "sedCount":667,
    "favoCount":455,
  },
  {
    "profile": {"username":"Hawa",
      "avatar":"assets/images/b.jpg",},
    "media":"assets/videos/Salam.mp4",
    "description": "Salutation à tous les musulmans",
    "likeCount":149000,
    "likeComment":80,
    "sedCount":699,
    "favoCount":664,
  }
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: PageView (
        scrollDirection: Axis.vertical,
        children: data.map((item){
        return FeedComponent(item:item,
        );
      }).toList(),
    ),
        /*currentIndex: 2,
            onTap: ((value) {
            print(value);
            },*/

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
         unselectedItemColor: Colors.blue,
         selectedItemColor: Colors.black87,
         // showSelectedLabels: false,
         // showUnselectedLabels: false,
          items:  [
          BottomNavigationBarItem(icon: Image.asset('assets/icones/home.png',
            width:27.52, height:35.95, color: Colors.blue,),
          label: "Accueil",
          ),
            BottomNavigationBarItem( icon: Image.asset('assets/icones/now.png',
                width:27.52, height:35.95, color: Colors.black,
              ),
              label: 'Add',
            ),
        BottomNavigationBarItem(icon: Image.asset('assets/icones/add.png',
          width:27.52, height:35.95, color: Colors.black,),
          label: "add",
          ),
         BottomNavigationBarItem(icon: Image.asset('assets/icones/mess.png',
           width:27.52, height:35.95, color: Colors.black,),
         label: "Boite de réception",
           ),
        BottomNavigationBarItem(icon: Image.asset('assets/icones/per.png',
          width:27.52, height:35.95, color: Colors.blue,),
        label: "Profil",
          ),

    ],
    )
          );
  }



}


