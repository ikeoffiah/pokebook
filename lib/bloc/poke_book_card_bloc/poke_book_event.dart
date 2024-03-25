import 'package:flutter/material.dart';

abstract class PokebookEvent {}

class UpdateStateEvent extends PokebookEvent {
   String title = "";
  String imagePath = "";
  List<Widget> features = [];

  UpdateStateEvent({
    required this.title,
    required this.imagePath,
    required this.features,
  });
}


