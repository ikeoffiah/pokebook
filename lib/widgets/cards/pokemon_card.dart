import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/bloc/poke_book_card_bloc/poke_book_bloc.dart';
import 'package:pokebook/bloc/poke_book_card_bloc/poke_book_event.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/views/preview.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.feature});

  final String title;
  final String imagePath;
  final List<Widget> feature;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PreviewScreen(
                    title: title, imagePath: imagePath, feature: feature)));
      },
      child: Container(
        margin: marginBetweenPokeBookCards,
        height: 420.06,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
                top: 59.8,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.89,
                  height: 361.06,
                  decoration: BoxDecoration(
                      boxShadow: [customBoxShadowPokeBookCard],
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(26.94))),
                  child: Container(
                    padding: cardMargin,
                    child: Column(
                      children: [
                        Container(
                          height: 199.39,
                          width: 361.06,
                          decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.21))),
                        ),
                        height26p94,
                        Text(
                          title,
                          style: blackText50032p33,
                        ),
                        height11p19,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: feature,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Container(
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
      ),
    );
  }
}
