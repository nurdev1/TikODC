import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
            Text("Saisis le code à 4 chiffres",
              style: GoogleFonts.share(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 25,
              ),),
            Text("Pour définir ton mot de passe, saisis le code à 4 chiffres envoyé au +223...65",
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
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Renvoyer le code 15 s")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
