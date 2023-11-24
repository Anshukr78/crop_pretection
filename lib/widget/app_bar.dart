import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/color.dart';


PreferredSize mainAppBarWidget({required BuildContext context}){
  return PreferredSize(
    preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 10),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: AppBar(
        backgroundColor: AppColor.c198754(opacity: 1),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Image.asset(
                'images/logo_new.png',
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Crop Animal',
                style: GoogleFonts.croissantOne(
                  color: AppColor.cFFFFFF(opacity: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
