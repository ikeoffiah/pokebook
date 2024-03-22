import 'package:flutter/material.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/widgets/appBars/list_view_app_bar.dart';
import 'package:pokebook/widgets/cards/pokemon_card.dart';
import 'package:pokebook/widgets/containers/custom_container.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ListViewAppBar(),
      body: CustomContainer(child: SingleChildScrollView(
        child: Container(
          margin: pageMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(
            height: 48,
            
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: whiteColor2,
              boxShadow: [customBoxShadowSearchBar],
              border: Border.all(width: 1, color: borderColor),
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                width23,
                Icon(Icons.search, color: cardBorderColor,),
width10,
                Text("Enter pokemon name", style: greyText40018,)
              ],
            ),
          ),

          height40,
          PokemonCard(),
          
            ],
          ),
        ),
      )),
    );
  }
}