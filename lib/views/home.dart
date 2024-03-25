import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/sizebox_constants.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/views/list_view.dart';
import 'package:pokebook/widgets/containers/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
          child: Container(
        margin: pageMargin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/dragon1.svg"),
            height30p4,
            RichText(
                text: TextSpan(
                    text: "Poké",
                    style: blackText60048,
                    children: [TextSpan(text: " book", style: pinkText60048)])),
            height8,
            Text(
              "Largest Pokémon index with information about every Pokemon you can think of.",
              style: blackText40018,
              textAlign: TextAlign.center,
            ),
            height100,
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewScreen()));
              },
              child: Container(
                height: 81,
                width: 390,
                decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(width: 8, color: pinkColor),
                    borderRadius: const BorderRadius.all(Radius.circular(60))),
                child: Container(
                  margin: searchBarMargin,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enter pokemon name",
                        style: greyText40020,
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: pinkColor2,
                            boxShadow: [customBoxShadowSearchIcon],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        child: const Center(
                          child: Icon(
                            Icons.search,
                            color: whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            height16,
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListViewScreen()));
                },
                child: Text(
                  "View",
                  style: blackTextUnderline250018,
                ))
          ],
        ),
      )),
    );
  }
}
