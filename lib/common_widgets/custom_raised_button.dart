import 'package:flutter/material.dart';

class CustomeRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  CustomeRaisedButton({
    this.child,
    this.color,
    this.borderRadius: 2.0,
    this.height: 50.0,
    this.onPressed,
  }) : assert(borderRadius !=
            null); //Add run time check So if the condition is false will give me a run time error

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
