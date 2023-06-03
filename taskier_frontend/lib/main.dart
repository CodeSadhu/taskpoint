import 'package:flutter/material.dart';
import 'package:taskier/screens/main_page.dart';
import 'package:taskier/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const MainPage(),
    );
  }
}
