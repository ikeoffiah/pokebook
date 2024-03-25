import 'package:flutter/material.dart';
import 'package:pokebook/models/bottom_nav_model.dart';
import 'package:pokebook/views/preview.dart';
import 'package:pokebook/views/similar.dart';
import 'package:pokebook/views/stats.dart';
import 'package:pokebook/widgets/bottomNav/bottom_nav_button.dart';

class BottomNavBarContainer extends StatefulWidget {
  const BottomNavBarContainer({super.key,  this.previewImagePath = "", this.previewTitle= "", this.features= const []});
  
  final String previewTitle;
  final String previewImagePath;
  final List<Widget> features;
 
  @override
  State<BottomNavBarContainer> createState() => _BottomNavBarContainerState();
}

class _BottomNavBarContainerState extends State<BottomNavBarContainer> {

  @override
  Widget build(BuildContext context) {
    List<BottomNavItems> items = [
      BottomNavItems(title: "About", page: PreviewScreen(title: widget.previewTitle, imagePath: widget.previewImagePath, feature: widget.features)),
      BottomNavItems(title: "Stats", page: const StatsScreen()),
      BottomNavItems(title: "Similar", page: const Similar())
    ];
    return BottomNavBar(items: items);
  }
}