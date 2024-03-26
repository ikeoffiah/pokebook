import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/bloc/nav_bloc/nav_bloc.dart';
import 'package:pokebook/bloc/nav_bloc/nav_state.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/models/about_detail_model.dart';
import 'package:pokebook/models/stats_detail_model.dart';
import 'package:pokebook/widgets/bottomNav/bottom_nav_container.dart';
import 'package:pokebook/widgets/cards/pokemon_detail_card.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.feature});

  final String title;
  final String imagePath;
  final List<Widget> feature;

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  List<AboutModel> aboutNavFeature = [
    AboutModel(title: "Height", feature: "1.0m"),
    AboutModel(title: "Weight", feature: "13.0kg"),
    AboutModel(
        title: "Abilities",
        feature: "",
        featureList: ["overgrow", "chlorophyll"])
  ];

  List<StatsModel> statsNav = [
    StatsModel(title: "HP", stats: 60),
    StatsModel(title: "Attack", stats: 62),
    StatsModel(title: "Defence", stats: 63),
    StatsModel(title: "Special Attack", stats: 80),
    StatsModel(title: "Special Defence", stats: 60),
    StatsModel(title: "Speed", stats: 60),
  ];

  List<PokemonDetailCard> similarNav = [
    const PokemonDetailCard(
      title: "Bulbasaur",
      imagePath: "assets/images/frog1.svg",
    ),
    const PokemonDetailCard(
        title: "Venusaur", imagePath: "assets/images/frog2.svg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: const BottomNavBarContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 283,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24))),
                  child: Container(
                    margin: iconMargin,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              boxShadow: [customBoxShadowIcon],
                              color: whiteColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.29)),
                            ),
                            child: const Center(
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 320.72,
                    width: 255,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: SvgPicture.asset(widget.imagePath),
                    ),
                  ),
                )
              ],
            ),
            height30p52,
            Text(
              widget.title,
              style: blackText60056,
            ),
            height6,
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.feature,
            )),
            height51p3,
            BlocBuilder<NavBloc, NavState>(buildWhen: (previous, current) {
              return true; // UI would be updated only if it returns true
            }, builder: (context, state) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 43.04,
                decoration: BoxDecoration(
                    boxShadow: [customBoxShadowAbout], color: whiteColor),
                child: SizedBox(
                    height: 43.04,
                    child: Center(
                        child: Text(
                      state.counter == 0 || state.counter == 1
                          ? "About"
                          : "Similar",
                      style: blackText60019p37,
                      textAlign: TextAlign.center,
                    ))),
              );
            }),
            Container(
              height: 1.55,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 0.6, 1.0],
                colors: [
                  whiteColor,
                  greyColor3,
                  whiteColor,
                ],
              )),
            ),
            BlocBuilder<NavBloc, NavState>(buildWhen: (previous, current) {
              return true; // UI would be updated only if it returns true
            }, builder: (context, state) {
              return state.counter == 0
                  ? buildPreview(context, aboutNavFeature)
                  : state.counter == 1
                      ? buildStats(context, statsNav)
                      : buildSimilar(context, similarNav);
            }),
            

            BlocBuilder<NavBloc, NavState>(buildWhen: (previous, current) {
              return true; // UI would be updated only if it returns true
            }, builder: (context, state) {
              return state.counter == 0
                  ? height90
                  : state.counter == 1
                      ? height90
                      : Container();
            })
          ],
        ),
      ),
    );
  }
}

Widget buildPreview(BuildContext context, List<AboutModel> listOfFeatures) =>
    Container(
        height: 153.42,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.6, 1.0],
          colors: [
            whiteColor,
            greyColor3,
            whiteColor,
          ],
        )),
        child: Center(
          child: SizedBox(
            height: 153.42,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listOfFeatures.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: marginAbout,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listOfFeatures[index].title,
                              style: blackText40015p06,
                            ),
                            width30p93,
                            listOfFeatures[index].feature != ""
                                ? Text(
                                    listOfFeatures[index].feature,
                                    style: blackText60015p06,
                                  )
                                : Column(
                                    children: [
                                      SizedBox(
                                        height: listOfFeatures[index]
                                                .featureList
                                                .length *
                                            30,
                                        width: 105,
                                        child: ListView.builder(
                                            itemCount: listOfFeatures[index]
                                                .featureList
                                                .length,
                                            itemBuilder:
                                                (context, featureIndex) {
                                              return Row(
                                                children: [
                                                  const Icon(
                                                    Icons.circle,
                                                    size: 8,
                                                  ),
                                                  width5,
                                                  Text(
                                                    listOfFeatures[index]
                                                            .featureList[
                                                        featureIndex],
                                                    style: blackText60015p06,
                                                  )
                                                ],
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        margin: marginAbout,
                        height: 1.55,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.0, 0.453, 1.0292],
                          colors: [
                            whiteColor,
                            greyColor3,
                            whiteColor,
                          ],
                        )),
                      ),
                      
                    ],
                  );
                }),
          ),
        ));

Widget buildStats(BuildContext context, List<StatsModel> featuresOfStats) =>
    Container(
        height: 280.48,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.6, 1.0],
          colors: [
            whiteColor,
            greyColor3,
            whiteColor,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280.48,
              margin: pageMargin,
              child: ListView.builder(
                  itemCount: featuresOfStats.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  featuresOfStats[index].title,
                                  style: blackText40015p06,
                                ),
                                SizedBox(
                                  width: 156.42,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: 102.48,
                                            height: 8.63,
                                            color: progressBarColor,
                                          ),
                                          Container(
                                            height: 8.63,
                                            width: 102.48 *
                                                (featuresOfStats[index].stats /
                                                    100),
                                            color: pinkColor,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "${featuresOfStats[index].stats}",
                                        style: blackText60015p06,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1.55,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 0.453, 1.0292],
                            colors: [
                              whiteColor,
                              greyColor3,
                              whiteColor,
                            ],
                          )),
                        )
                      ],
                    );
                  }),
            ),
           
          ],
        ));

Widget buildSimilar(BuildContext context, List<PokemonDetailCard> similarNav) =>
    Container(
      margin: pageMargin,
     
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 350,
            child: ListView.builder(
                itemCount: similarNav.length,
                itemBuilder: (context, index) {
                  return similarNav[index];
                }),
          )
        ],
      ),
    );
