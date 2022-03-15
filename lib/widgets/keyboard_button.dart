import 'package:flutter/material.dart';
import 'package:wxrdle/globals/colors.dart';

class KeyboardButton extends StatelessWidget {
  final String char;
  final Function(String) onPress;
  const KeyboardButton({ Key? key, required this.char, required this.onPress }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = (MediaQuery.of(context).size.width - 20) / 10;
    return SizedBox(
      width: _width,
      height: 50,
      child: InkWell(
        onTap: (() {
          onPress(char);
        }),
        child: Container(
          decoration: BoxDecoration(
            color: buttonBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.all(2),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              char,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: textColor
              ),
            ),
          ),
        ),
      ),
    );
  }
}