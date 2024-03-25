import 'package:flutter/material.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/text_style.dart';

class FeatureButton extends StatelessWidget {
  const FeatureButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBetweenFeatureButton,
      padding: featureButtonMargin,
      decoration: const BoxDecoration(
          color: greyButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(53.89))),
      child: Text(
        text,
        style: blackText40021p56,
      ),
    );
  }
}
