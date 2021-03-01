import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomeRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text !=
            null), //Add run time check So if the condition is false will give me a run time error
        super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
