import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokebook/core/constants/box_shawdow.dart';
import 'package:pokebook/core/constants/colors.dart';
import 'package:pokebook/core/constants/margins.dart';
import 'package:pokebook/core/constants/text_style.dart';
import 'package:pokebook/widgets/containers/custom_container.dart';

class ListViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ListViewAppBar({super.key, this.popPage = true, this.widget});

  final bool popPage;
  final Widget? widget;

  @override
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.white.withOpacity(1),
        backgroundColor: Colors.white.withOpacity(1),
        flexibleSpace: CustomContainer(
          child: Stack(
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
                      onTap: () {},
                      child: Container(
                        margin: pageMargin,
                        child: Container(
                          height: 42,
                          width: 42,
                          padding: changeColorButtonPadding,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(46.67)),
                              border:
                                  Border.all(width: 0.93, color: greyColor2)),
                          child: Container(
                              height: 32.49,
                              width: 32.49,
                              decoration: const BoxDecoration(
                                color: pinkColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(46.67)),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: pageMargin,
                  alignment: Alignment.bottomLeft,
                  width: 114.11,
                  child: Container(
                      width: 114.11,
                      child: SvgPicture.asset(
                        "assets/images/dragon1.svg",
                      ))),
            ],
          ),
        ),
        leading: Container(
          width: 0,
        ),
      ),
    );
  }
}
