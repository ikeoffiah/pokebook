import 'package:flutter/material.dart';
import 'package:pokebook/widgets/bottomNav/bottom_nav_container.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarContainer(),
      body: Center(
        child: Text("stats"),
      ),
    );
  }
}