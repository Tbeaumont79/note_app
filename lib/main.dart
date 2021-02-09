import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './constant.dart';
import './views/noteScreen.dart';
import './views/reminderScreen.dart';
import './provider/noteProvider.dart';
import 'views/homeScreen.dart';
import './views/sharedWithScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(kbackgroundColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            '/': (context) => Home(),
            '/note': (context) => NoteScreen(),
            '/reminder': (context) => ReminderScreen(),
            '/sharedWith': (context) => SharedWithScreen()
          }),
    );
  }
}
