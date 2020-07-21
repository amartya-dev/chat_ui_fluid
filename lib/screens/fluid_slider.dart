import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:chat/screens/call_screen.dart';
import 'package:chat/screens/home_screen.dart';

final pages = [
  Container(
    child: HomeScreen(),
  ),
  Container(
    child: CallScreen(),
  )
];

class LiquidSwipeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Builder(
      builder: (context) => LiquidSwipe(
        pages: pages,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        enableSlideIcon: true,
        positionSlideIcon: 0.54,
        fullTransitionValue: 500,
      ),
    );
  }
}
