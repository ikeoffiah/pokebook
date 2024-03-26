import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/bloc/color_bloc/color_bloc.dart';
import 'package:pokebook/bloc/color_bloc/color_event.dart';
import 'package:pokebook/bloc/color_bloc/color_state.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/widgets/appBars/list_view_app_bar.dart';
import 'package:pokebook/widgets/cards/pokemon_card.dart';
import 'package:pokebook/widgets/containers/custom_container.dart';
import 'package:pokebook/widgets/pokebook_feature_button.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

List _pokemonCards = [
  const PokemonCard(
    title: "charizard",
    imagePath: "assets/images/dragon1.svg",
    feature: [FeatureButton(text: "🔥 Fire"), FeatureButton(text: "🦋 Flying")],
  ),
  const PokemonCard(
      title: "ivysaur",
      imagePath: "assets/images/frog.svg",
      feature: [
        FeatureButton(text: "🌿 Grass"),
        FeatureButton(text: "☠️ Poison")
      ]),
  const PokemonCard(
      title: "raticate",
      imagePath: "assets/images/rat.svg",
      feature: [FeatureButton(text: "🐻 Normal")]),
  const PokemonCard(
      title: "beedrill",
      imagePath: "assets/images/insect.svg",
      feature: [
        FeatureButton(text: "🐞 Bug"),
        FeatureButton(text: "☠️ Poison")
      ])
];

bool isPink = false;
bool isBlue = false;
bool isYellow = false;

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
          child: SingleChildScrollView(
        child: SafeArea(
          child: StickyHeader(
            header: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 113.93,
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 147.2,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Poké",
                                  style: blackText60021p16,
                                  children: [
                                
                                
                                TextSpan(text: "book", style: pinkText60021p16)
                              ])),
                          Expanded(child: Container()),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                        builder: (context, setState) {
                                      return Center(
                                        child: Container(
                                          margin: pageMargin,
                                          height: 240.77,
                                          decoration: BoxDecoration(
                                              color: whiteColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: CustomContainer(
                                              child: Column(
                                            children: [
                                              Container(
                                                height: 52.18,
                                                child: Center(
                                                  child: DefaultTextStyle(
                                                      style: blackText60020,
                                                      child:
                                                          Text("Choose Theme")),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: borderColor
                                                      .withOpacity(0.4),
                                                  child: Center(
                                                    child: Container(
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            buildColor(
                                                                pinkColor,
                                                                isPink, () {
                                                                  context.read<ColorBloc>().add(ColorPinkEvent());
                                                              setState(() {
                                                                isPink = true;
                                                                isBlue = false;
                                                                isYellow =
                                                                    false;
                                                              });
                                                            }),
                                                            width5,
                                                            buildColor(
                                                                blueColor,
                                                                isBlue, () {
                                                                  context.read<ColorBloc>().add(ColorBlueEvent());
                                                              setState(() {
                                                                isPink = false;
                                                                isBlue = true;
                                                                isYellow =
                                                                    false;
                                                              });
                                                            }),
                                                            width5,
                                                            buildColor(
                                                                yellowColor,
                                                                isYellow, () {
                                                              context.read<ColorBloc>().add(ColorYellowEvent());
                                                              setState(() {
                                                                isPink = false;
                                                                isBlue = false;
                                                                isYellow = true;
                                                              });
                                                            })
                                                          ]),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                        ),
                                      );
                                    });
                                  });
                            },

                           
                            child:  BlocBuilder<ColorBloc, ColorState>(builder: (context, state){
                              return Container(
                              margin: pageMargin,
                              child: Container(
                                height: 42,
                                width: 42,
                                padding: changeColorButtonPadding,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(46.67)),
                                    border: Border.all(
                                        width: 0.93, color: greyColor2)),
                                child: Container(
                                    height: 32.49,
                                    width: 32.49,
                                    decoration: BoxDecoration(
                                      color: state.color,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(46.67)),
                                    )),
                              ),
                            );
                            }),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: pageMargin,
                        height: 167,
                        width: 114.11,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            height: 74.06,
                            width: 114.11,
                            child: SvgPicture.asset(
                              "assets/images/dragon1.svg",
                            ))),
                  ],
                ),
                Container(
                  height: 48,
                  margin: pageMargin,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: whiteColor2,
                      boxShadow: [customBoxShadowSearchBar],
                      border: Border.all(width: 1, color: borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      width23,
                      Icon(
                        Icons.search,
                        color: cardBorderColor,
                      ),
                      width10,
                      Text(
                        "Enter pokemon name",
                        style: greyText40018,
                      )
                    ],
                  ),
                ),
              ],
            ),
            content: Container(
              margin: marginBetweenSearchBarandCard,
              height: _pokemonCards.length * 440,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _pokemonCards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _pokemonCards[index];
                  }),
            ),
          ),
        ),
      )),
    );
  }
}

Widget buildColor(Color color, bool isActive, VoidCallback onClick) =>
    GestureDetector(
      onTap: onClick,
      child: Container(
        margin: pageMargin,
        child: Container(
          height: 42,
          width: 42,
          padding: changeColorButtonPadding,
          decoration: isActive
              ? BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(46.67)),
                  border: Border.all(width: 0.93, color: greyColor2))
              : BoxDecoration(color: Colors.transparent),
          child: Container(
              height: 32.49,
              width: 32.49,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(46.67)),
              )),
        ),
      ),
    );
