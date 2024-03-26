import 'package:flutter/material.dart';
import 'package:pokebook/core/constants/colors.dart';

abstract class ColorState {
  Color color = pinkColor;

  ColorState({required this.color});
}

class ColorInitialState extends ColorState {

  ColorInitialState(): super(color: pinkColor);

}

class ColorBlueState extends ColorState {

ColorBlueState(Color blueColor): super(color: blueColor);

}

class ColorYellowState extends ColorState {

ColorYellowState(Color yellowColor): super(color: yellowColor);

}

class ColorPinkState extends ColorState {

ColorPinkState(Color pinkColor): super(color: pinkColor);

}