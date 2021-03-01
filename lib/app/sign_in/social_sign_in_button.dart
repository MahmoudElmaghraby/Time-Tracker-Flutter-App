import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_raised_button.dart';

class SocilaSignInButton extends CustomeRaisedButton {
  SocilaSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(assetName !=
            null), //Add run time check So if the condition is false will give me a run time error
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
