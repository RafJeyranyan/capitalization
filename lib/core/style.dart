import 'package:flutter/material.dart';

abstract class AppColors{

  static const primary = Colors.black;
  static const contrast = Colors.white;

  static const background = Color(0xCDECEFEB);
  static const appBar = Color(0xD852795D);
  static const content = Color(0x848AA7CE);
  static const greenBackGround = Color(0xF2DBE8DB);

  static const List<Color> PieColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.deepPurple
  ];
}



abstract class AppTextStyle{

  static const defaultTextStyle = TextStyle(fontSize: 18.0,color: AppColors.primary,fontWeight: FontWeight.w600);
  static const numbers = TextStyle(fontSize: 24.0,color: AppColors.primary,fontWeight: FontWeight.w600);
  static const contentSmall = TextStyle(fontSize: 14.0,color: AppColors.primary,fontWeight: FontWeight.w500);
  static const contentDefault = TextStyle(fontSize: 20.0,color: AppColors.primary,fontWeight: FontWeight.w500);
  static const contentLarge = TextStyle(fontSize: 16.0,color: AppColors.primary,fontWeight: FontWeight.w500);
  static const title = TextStyle(fontSize: 24.0,color: AppColors.primary,fontWeight: FontWeight.w600);

}

abstract class AppTheme{
  static BoxShadow shadow = BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 4,
    color: const Color(0xFF030303).withOpacity(0.8),
  );
}

abstract class AppBorderRadius{
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(20.0));
}