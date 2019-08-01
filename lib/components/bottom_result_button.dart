import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomResultButton extends StatelessWidget {
  BottomResultButton({@required this.buttonTitle, @required this.onTap, this.bottomResultKey});

  final Function onTap;
  final String buttonTitle;
  final Key bottomResultKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: bottomResultKey,
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonTextStyle,
          ),
        ),
        color: kCustomBottomContainerColor,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}