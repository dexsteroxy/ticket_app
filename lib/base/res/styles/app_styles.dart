import 'package:flutter/material.dart';


Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = Color(0xFF3b3b3b);
  static Color ticketblue = Color(0xFF526799);
   static Color ticketsorange = Color(0xFFF37B67);

  // for the texts

static TextStyle textStyle =TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle heading1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppStyles.textColor,
  );

   static TextStyle normalheading2 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
   
  );

   static TextStyle normalheading3 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
   color: AppStyles.textColor,
  );
}
