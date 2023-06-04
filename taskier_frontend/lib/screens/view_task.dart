import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:taskier/models/task_model.dart';
import 'package:taskier/providers/tasks_provider.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/styles.dart';

class ViewTaskPage extends StatefulWidget {
  const ViewTaskPage({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<ViewTaskPage> createState() => _ViewTaskPageState();
}

class _ViewTaskPageState extends State<ViewTaskPage> {
  late Size size;
  late TaskModel taskModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = Constants.getSize(context);
    taskModel = widget.taskModel;
    return Scaffold(
      backgroundColor: ColorPalette.primary,
      appBar: AppBar(
        backgroundColor: ColorPalette.primary,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorPalette.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'View Task',
          style: Styles.appbarStyle(
            color: ColorPalette.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.06,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.02,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: ColorPalette.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Task Title',
                      style: Styles.smallBodyStyle(),
                    ),
                    Text(
                      '${taskModel.title}',
                      style: Styles.appbarStyle(),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Time',
                      style: Styles.smallBodyStyle(),
                    ),
                    Text(
                      '${taskModel.startTime}',
                      style: Styles.appbarStyle(),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Task Date',
                      style: Styles.smallBodyStyle(),
                    ),
                    Text(
                      '${taskModel.createdAt}',
                      style: Styles.appbarStyle(),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Description',
                      style: Styles.smallBodyStyle(),
                    ),
                    Text(
                      '${taskModel.description}',
                      style: Styles.appbarStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
