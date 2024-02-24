import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
 final Widget  webScrin;
final Widget mobileScrin;
  const  ScreenSize({super.key, required this.webScrin, required this.mobileScrin,});
 final screenSize = 600;
  @override
  Widget build(BuildContext context) {
  return LayoutBuilder(builder: (context, constraints) {
  if(constraints.maxWidth>screenSize){
  return webScrin;
  }else{
    return mobileScrin;
  }
  });
  }
}