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
  },
  {
    "profile": {"username":"Bintou",
  "avatar":"assets/images/c.jpg",},
    "media":"assets/videos/AlahumaSudais.mp4",
    "description": "Passez une agréable journée avec Sudais",
    "likeCount":600000,
    "likeComment":12,
  },
  {
    "profile": {"username":"Fodié", "avatar":"assets/images/e.jpg",},
    "media":"assets/videos/Alhamdulah.mp4",
    "description": "Al-hamdu li-l-lâhi",
    "likeCount":87,
    "likeComment":80,
  },
  {
    "profile": {"username":"Aïchat",
  "avatar":"assets/images/d.jpg",},
    "media":"assets/videos/Rabana.mp4",
    "description": "Demande du pardon du Tout Puissant",
    "likeCount":1700,
    "likeComment":99,
  },
  {
    "profile": {"username":"Hawa",
      "avatar":"assets/images/b.jpg",},
    "media":"assets/videos/Salam.mp4",
    "description": "Salutation à tous les musulmans",
    "likeCount":149000,
    "likeComment":80,
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
         /* currentIndex: 2,
          onTap: ((value) {
            print(value);*/
          unselectedItemColor: Colors.pink,
          selectedItemColor: Colors.black87,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Accueil",
          ),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),
          label: "Now",
            ),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined),
          label: "add",
          ),
         BottomNavigationBarItem(icon: Icon(Icons.comment_outlined),
         label: "Boite de reception",
           ),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),
        label: "Profil",
          ),

    ],
    )
          );
  }



}


