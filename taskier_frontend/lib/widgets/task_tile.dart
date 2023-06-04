import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskier/utils/assets.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/styles.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.size,
    required this.task,
  });
  final Size size;
  final String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.02,
        vertical: size.height * 0.01,
      ),
      margin: EdgeInsets.only(
        bottom: size.height * 0.005,
        top: size.height * 0.005,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorPalette.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            TaskAsset.taskIdeaIcon,
            color: ColorPalette.primary,
          ),
          SizedBox(
            width: size.width * 0.1,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: size.width * 0.6,
            ),
            child: Text(
              task,
              overflow: TextOverflow.ellipsis,
              style: Styles.bodyStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
