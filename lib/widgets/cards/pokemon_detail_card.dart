import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';


class PokemonDetailCard extends StatelessWidget {
  const PokemonDetailCard(
      {super.key,
      required this.title,
      required this.imagePath,
      });

  final String title;
  final String imagePath;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBetweenPokeBookDetailCards,
      height: 289.35,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
              top: 42.1,
              
              right: 0,
              left: 0,
              
              child: Center(
                child: Container(
                  width:243.75,
                  height:  197.24,
                  decoration: BoxDecoration(
                      boxShadow: [customBoxShadowPokeBookCard],
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(22.16))),
                  child: Container(
                    margin: EdgeInsets.only(top: 7.83),
                    child: Column(
                      children: [
                        Container(
                          height: 125.26,
                          width: 226.82,
                          decoration: const BoxDecoration(
                              color: cardColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.62))),
                        ),
                        height8p73,
                        Text(
                          title,
                          style: blackText50032p33,
                        ),
                        
                        
                      ],
                    ),
                  ),
                ),
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(imagePath),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
