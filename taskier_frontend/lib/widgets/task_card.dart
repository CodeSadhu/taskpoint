import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskier/utils/assets.dart';
import 'package:taskier/utils/styles.dart';

import '../utils/colors.dart';

class TaskDetailsCard extends StatelessWidget {
  const TaskDetailsCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: getGradient(),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -60,
            right: -30,
            child: Container(
              width: size.width * 0.4,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.03,
            ),
            height: size.height * 0.25,
            width: size.width * 0.5,
            child: buildCardContent(),
          ),
          Positioned(
            bottom: -60,
            left: -30,
            child: Container(
              width: size.width * 0.4,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: ColorPalette.textGrey.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column buildCardContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              TaskAsset.taskIdeaIcon,
              height: size.height * 0.05,
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            Text(
              'Task 1',
              style: Styles.bodyStyle(
                fontWeight: FontWeight.w600,
                color: ColorPalette.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
      ],
    );
  }

  LinearGradient getGradient() {
    return LinearGradient(
      tileMode: TileMode.mirror,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: const [
        -0.3,
        0.0,
        0.5,
        0.8,
      ],
      colors: [
        ColorPalette.primary.withOpacity(0.4),
        ColorPalette.primary.withOpacity(0.5),
        ColorPalette.primary.withOpacity(0.8),
        ColorPalette.primary,
      ],
    );
  }
}
