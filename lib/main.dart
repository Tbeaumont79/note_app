import 'package:flutter/material.dart';
import './constant.dart';
import './views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(kbackgroundColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
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
      appBar: AppBar(brightness: Brightness.dark,backgroundColor: Color(kbackgroundColor), elevation: 0,),
      extendBody: true,
      body: Home(),
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
