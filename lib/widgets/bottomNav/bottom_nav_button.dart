import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/nav_bloc/nav_bloc.dart';
import 'package:pokebook/bloc/nav_bloc/nav_event.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/models/bottom_nav_model.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {super.key, required this.items});

  final List<BottomNavItems> items;
 

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 97,
      padding: bottomNavMargin,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [customBoxShadowBottomNavMain]
      ),
      child: Container(
        height: 59,
        decoration: BoxDecoration(
            boxShadow: [customBoxShadowBottomNav],
            color: navBarBackgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(60))),
        child: Container(
          padding: marginBetweenBottomNav,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  widget.items.length,
                  (index) => InkWell(
                      onTap: () {
                         if(index == 0){
                          context.read<NavBloc>().add(NavPreviewEvent());
                          setState(() {
                            currentIndex = 0;
                          });

                         }else if(index == 1){
                          context.read<NavBloc>().add(NavStatsEvent());
                          setState(() {
                            currentIndex = 1;
                          });
                         }else{
                          context.read<NavBloc>().add(NavSimilarEvent());
                          setState(() {
                            currentIndex = 2;
                          });
                         }
                      },
                      child: currentIndex == index
                          ? buildActiveButton("${widget.items[index].title}")
                          : buildInActiveButton(
                              "${widget.items[index].title}")))),
        ),
      ),
    );
  }
}

Widget buildInActiveButton(String title) => Container(
      height: 43,
      
      child: Center(
        child: Text(
          title,
          style: blackText50016,
          textAlign: TextAlign.center,
        ),
      ),
    );

Widget buildActiveButton(String title) => Container(
      height: 43,
      width: 114,
      decoration: BoxDecoration(
          boxShadow: [customBoxShadowBottomNavButton],
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(60))),
      child: Center(
        child: Text(
          title,
          style: blackText50016,
          textAlign: TextAlign.center,
        ),
      ),
    );
