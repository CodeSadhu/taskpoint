import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskier/utils/assets.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/styles.dart';
import 'package:taskier/widgets/task_card.dart';
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
              Row(
                children: [
                  TaskDetailsCard(size: size),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
