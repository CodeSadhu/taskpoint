import 'package:flutter/material.dart';
import 'package:taskier/utils/strings.dart';
import 'package:taskier/utils/styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Strings.appName,
          style: Styles.bodyStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
