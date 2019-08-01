//For custom card layout
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.customColor, this.cardChild, this.onPress, this.testKey});

  final Color customColor;
  final Widget cardChild;
  final Function onPress;
  final Key testKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: testKey,
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
