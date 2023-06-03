import 'dart:html';

import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:taskier/models/task_filter.dart';
import 'package:taskier/providers/common_provider.dart';
import 'package:taskier/utils/assets.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/styles.dart';
import 'package:taskier/widgets/task_filter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = Constants.getSize(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.06,
            vertical: size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    TaskAsset.menuIcon,
                    height: size.height * 0.026,
                  ),
                  SvgPicture.asset(
                    TaskAsset.personIcon,
                    height: size.height * 0.03,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Hello Rohan',
                style: Styles.appbarStyle(
                  fontSize: 34,
                  lineHeight: 1.8,
                ),
              ),
              Text(
                'Have a nice day!',
                style: Styles.smallBodyStyle(
                  color: ColorPalette.textGrey,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TaskFilterSection(size: size),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                // height: size.height * 0.4,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            tileMode: TileMode.mirror,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [
                              0.0,
                              0.1,
                              0.5,
                              0.8,
                            ],
                            colors: [
                              ColorPalette.primary.withOpacity(0.1),
                              ColorPalette.primary.withOpacity(0.3),
                              ColorPalette.primary.withOpacity(0.6),
                              ColorPalette.primary,
                            ]
                            // stops: [
                            //   0.0,
                            //   0.02,
                            //   0.6,
                            //   0.7,
                            //   0.8,
                            //   0.9,
                            // ],
                            // colors: [
                            //   ColorPalette.lightPrimary,
                            //   ColorPalette.lightGrey,
                            //   ColorPalette.primary,
                            //   ColorPalette.primary,
                            //   ColorPalette.primary,
                            //   ColorPalette.primary,
                            // ],
                            ),
                      ),
                      height: size.height * 0.2,
                      width: size.width * 0.4,
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
