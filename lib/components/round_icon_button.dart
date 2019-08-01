import 'package:flutter/material.dart';

//custom icon button for the bottom two cards
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.customIcon, @required this.onPressedCustom,this.roundIconKey});

  final IconData customIcon;
  final Function onPressedCustom;
  final Key roundIconKey;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      key: roundIconKey,
      child: Icon(customIcon),
      onPressed: onPressedCustom,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}