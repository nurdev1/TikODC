import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MotDePasse extends StatelessWidget {
  const MotDePasse({Key? key}) : super(key: key);

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
              "Connexion",
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(

              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Téléphone',
                            ),
                            textInputAction: TextInputAction.next,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Ml + 223 ',
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text('mot de passe oublier ?'),

                          SizedBox(height: 50,),
                          ElevatedButton(
                              onPressed:() {},
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(),
                                backgroundColor: Colors.pinkAccent,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text('Connexion',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.acme(
                                      color: Colors.white,
                                      fontSize:18,
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
