import 'package:authentication_app/src/utils/theme/widget_theme/text_theme.dart';
import 'package:flutter/material.dart';

class SAppTheme{
   static  ThemeData lighThemeData=ThemeData(
     brightness: Brightness.light,
     textTheme: STextTheme.lightTextTheme,
     elevatedButtonTheme: ElevatedButtonThemeData(

     ),
     primarySwatch: const MaterialColor(0xFFA020F0, <int,Color>{
       50:Color(0xFFA020F0),
       100:Color(0xFFA020F0),
       200:Color(0xFFA020F0),
       300:Color(0xFFA020F0),
       400:Color(0xFFA020F0),
       500:Color(0xFFA020F0),
       600:Color(0xFFA020F0),
       700:Color(0xFFA020F0),
       800:Color(0xFFA020F0),
       900:Color(0xFFA020F0),

     },


     )
   );
   static  ThemeData darkThemeData=ThemeData(
      brightness: Brightness.dark,


   );

}