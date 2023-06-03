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
              TaskFilterSection(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

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
