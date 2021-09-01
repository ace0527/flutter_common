

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeagleButton extends StatelessWidget {

  late double height;
  late double marginHorizontal;
  late double borderRadius;
  late String text;
  late double width;
  late VoidCallback? onPress;

  DeagleButton({
    @required this.onPress,
    this.text: "",
    this.width: double.infinity,
    this.height: 50,
    this.marginHorizontal: 10,
    this.borderRadius: 4.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: marginHorizontal),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor)
          ),
          child: Text(text),
          onPressed: onPress
      ),
    );
  }

}