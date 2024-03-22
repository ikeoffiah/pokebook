import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/core/constants/colors.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({super.key});

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.06,
       width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 59.8,

            child: Container(
              width: MediaQuery.of(context).size.width *0.89,
            height: 361.01,
            
            decoration: BoxDecoration(
color: blackColor,
borderRadius: const BorderRadius.all(Radius.circular(50))
            ),
          )),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/image1.svg"),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}