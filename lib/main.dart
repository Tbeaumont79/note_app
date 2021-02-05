import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './constant.dart';
import 'views/homeScreen.dart';
import './views/noteScreen.dart';
import './provider/noteProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteProvider(),
      child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Color(kbackgroundColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            '/': (context) => MyHomePage(),
            '/note': (context) => NoteScreen(),
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(kbackgroundColor),
        elevation: 0,
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 85.0,
        width: 90.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xffF1F6FD),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 18,
        shape: CircularNotchedRectangle(),
        color: Color(0xff151418),
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.book,
                color: Color(0xffF1F6FD),
                size: 35,
              ),
              SizedBox(width: 3),
              Icon(
                Icons.star_border,
                color: Color(0xff999AA1),
                size: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
