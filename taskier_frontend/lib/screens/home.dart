import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:taskier/providers/tasks_provider.dart';
import 'package:taskier/screens/create_task.dart';
import 'package:taskier/screens/view_task.dart';
import 'package:taskier/utils/assets.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/strings.dart';
import 'package:taskier/utils/styles.dart';
import 'package:taskier/widgets/task_filter.dart';
import 'package:taskier/widgets/task_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  late TaskProvider _taskProvider;

  @override
  void initState() {
    super.initState();
    _taskProvider = Provider.of<TaskProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    size = Constants.getSize(context);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: size.height * 0.08,
        width: size.width * 0.18,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateTaskPage(),
              ),
            );
          },
          label: Icon(
            Icons.add,
            size: size.height * 0.04,
          ),
        ),
      ),
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
                'Hello!',
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
              Consumer<TaskProvider>(
                builder: (context, value, child) {
                  var taskList = value.taskList;
                  if (taskList.isNotEmpty) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: taskList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ViewTaskPage(
                                  taskModel: taskList[index],
                                ),
                              ),
                            ),
                            child: TaskTile(
                              size: size,
                              task: '${taskList[index].title}',
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Center(
                      child: Text(
                        Strings.emptyTaskMsg,
                        style: Styles.appbarStyle(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
