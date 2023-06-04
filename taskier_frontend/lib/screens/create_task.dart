import 'package:flutter/material.dart';
import 'package:normie/normie.dart';
import 'package:provider/provider.dart';
import 'package:taskier/models/task_model.dart';
import 'package:taskier/providers/tasks_provider.dart';
import 'package:taskier/utils/colors.dart';
import 'package:taskier/utils/constants.dart';
import 'package:taskier/utils/styles.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({super.key});

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  late Size size;
  late TaskProvider _taskProvider;

  TextEditingController _taskNameController = TextEditingController();
  TextEditingController _taskDateController = TextEditingController();
  TextEditingController _taskTimeController = TextEditingController();
  TextEditingController _taskDescriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _taskProvider = Provider.of<TaskProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    size = Constants.getSize(context);
    return Scaffold(
      backgroundColor: ColorPalette.primary,
      appBar: AppBar(
        actions: [
          FloatingActionButton.small(
            backgroundColor: ColorPalette.lightPrimary,
            child: const Icon(
              Icons.done,
              color: ColorPalette.textGrey,
            ),
            onPressed: () {
              _taskProvider.addSingleTask(
                TaskModel(
                  title: _taskNameController.text,
                  description: _taskDescriptionController.text,
                  startTime: _taskTimeController.text,
                  createdAt: _taskDateController.text,
                ),
              );
              Navigator.pop(context);
            },
          ),
        ],
        backgroundColor: ColorPalette.primary,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorPalette.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Create Task',
          style: Styles.appbarStyle(
            color: ColorPalette.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.06,
            ),
            // height: size.height * 0.3,
            decoration: const BoxDecoration(
              color: ColorPalette.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: Styles.smallBodyStyle(
                    color: ColorPalette.white,
                  ),
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _taskNameController,
                  decoration: InputDecoration(
                    enabledBorder: Styles.inputBorder(),
                    border: Styles.inputBorder(),
                    focusedBorder: Styles.inputBorder(),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Date',
                  style: Styles.smallBodyStyle(
                    color: ColorPalette.white,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  controller: _taskDateController,
                  decoration: InputDecoration(
                    hintText: 'Enter in dd-mm-yyyy format',
                    hintStyle: Styles.smallBodyStyle(
                      color: ColorPalette.white,
                      fontWeight: FontWeight.w300,
                    ),
                    enabledBorder: Styles.inputBorder(),
                    border: Styles.inputBorder(),
                    focusedBorder: Styles.inputBorder(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.06,
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
                      'Time',
                      style: Styles.smallBodyStyle(),
                    ),
                    TextFormField(
                      controller: _taskTimeController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: 'Enter current time',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Description',
                      style: Styles.smallBodyStyle(),
                    ),
                    TextFormField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: _taskDescriptionController,
                      maxLines: 3,
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
