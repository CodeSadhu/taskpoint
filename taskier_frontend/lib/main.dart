import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskier/providers/common_provider.dart';
import 'package:taskier/providers/tasks_provider.dart';
import 'package:taskier/screens/main_page.dart';
import 'package:taskier/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TaskProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MainPage(),
    );
  }
}
