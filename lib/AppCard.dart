import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard(
      {required this.colour, required this.cardChild, required this.onPress});
  final Widget cardChild;
  final Color colour;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
