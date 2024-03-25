import 'package:flutter/material.dart';
import 'package:pokebook/widgets/bottomNav/bottom_nav_container.dart';
class Similar extends StatefulWidget {
  const Similar({super.key});

  @override
  State<Similar> createState() => _SimilarState();
}

class _SimilarState extends State<Similar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarContainer(),
      body: Container(
        child: Text("Similar"),
      ),
    );
  }
}