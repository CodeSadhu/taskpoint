import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskier/providers/common_provider.dart';
import 'package:taskier/utils/constants.dart';

import '../models/task_filter.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class TaskFilterSection extends StatelessWidget {
  const TaskFilterSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    // CommonProvider _commonProvider =
    //     Provider.of<CommonProvider>(context, listen: false);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          Constants.taskStatus.length,
          (index) {
            String task = Constants.taskStatus[index].taskStatus;

            return Consumer<CommonProvider>(
              builder: (context, provider, _) {
                int activeIndex = provider.taskFilterIndex;
                for (TaskFilter filter in Constants.taskStatus) {
                  filter.selected = false;
                }
                Constants.taskStatus[activeIndex].selected = true;
                bool selected = Constants.taskStatus[index].selected;
                return GestureDetector(
                  onTap: () {
                    provider.switchTaskFilter(index);
                  },
                  child: CardyContainer(
                    shadowColor: Colors.transparent,
                    margin: EdgeInsets.all(size.width * 0.02),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12.5,
                    ),
                    color: selected
                        ? ColorPalette.white
                        : ColorPalette.lightPrimary,
                    borderRadius: BorderRadius.circular(30),
                    child: Text(
                      task,
                      style: Styles.smallBodyStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
