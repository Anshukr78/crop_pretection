
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget search( String image, String urls, String name, BuildContext a){
  return Container(
    height: MediaQuery.of(a).size.height * 0.30,
    width :MediaQuery.of(a).size.width,
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap:() => launchURL(urls),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Image.asset(image,
                    fit: BoxFit.cover,
                    width: 140,
                    height: 140,
                  ),
                ),
                Center(
                  child: Text(name,
                    style: const TextStyle(
                      color: Color(0xff198754),
                      fontSize: 15, fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.30,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 5.0,
                          color: Color(0x9A000000),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
launchURL(String urls) async{
  if(await canLaunch(urls)){
    await launch(urls);
  }
  else{
    throw 'Could not launc $urls';
  }
}