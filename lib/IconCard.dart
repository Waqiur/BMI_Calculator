import 'package:flutter/material.dart';

import 'Constants.dart';

class IconCard extends StatelessWidget {
  IconCard(this.icon, this.gender);
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kTextStyle,
        ),
      ],
    );
  }
}
