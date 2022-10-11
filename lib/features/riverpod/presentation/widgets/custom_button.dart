import 'package:flutter/material.dart';
import 'package:my_goals_1/core/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const CustomButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.buttonColor = ColorConstants.blue,
    this.textColor = Colors.black,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 36.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: onPressed != null
                ? MaterialStateProperty.all(
                    ColorConstants.blue,
                  )
                : MaterialStateProperty.all(ColorConstants.blue.withOpacity(0.5)),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Center(
              child: Text(text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
