import 'package:flutter/material.dart';
import 'package:petik_app/base/res/styles/app_styles.dart';

class TextStyleFouth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;

  const TextStyleFouth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headlineStyle4.copyWith(color: Colors.white)
          : AppStyles.headlineStyle4,
    );
  }
}
