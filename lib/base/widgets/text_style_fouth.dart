import 'package:flutter/material.dart';
import 'package:petik_app/base/res/styles/app_styles.dart';

class TextStyleFouth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFouth(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headlineStyle4.copyWith(color: Colors.white),
    );
  }
}
