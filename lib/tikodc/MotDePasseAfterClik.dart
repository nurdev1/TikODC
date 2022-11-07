import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MotDePasseAfterClik extends StatelessWidget {
  const MotDePasseAfterClik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
        IconButton(
          onPressed: (){},
          icon: Image.asset("assets/icones/ret.png"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Réinitialiser",
              style: GoogleFonts.abel(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30,

              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
            icon: Image.asset("assets/icones/que.png"),
          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Saisis ton numéro de téléphone",
              style: GoogleFonts.share(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),),
            Text("Nous vous enverrons un code sur ton telephone.",
              style: GoogleFonts.aclonica(
                color: Colors.black12,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
                Form(
                    child: Column(
                     children: [
                       TextFormField(
                      decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                        labelText: 'Ml + 223 ',
                         ),
                         ),
                     SizedBox(height: 15,),

                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           shape: new RoundedRectangleBorder(),
                           backgroundColor: Colors.black26,
                         ),
                         onPressed: () { },
                         child: Text('Envoyer un code'),
                       ),

                   ],
        ),
      ),
      ],
        ),
    ),
    );
  }
}

