import 'package:flutter/material.dart';
import '../constant.dart';
import '../widgets/Home/topHome.dart';
import '../widgets/Home/NavHome.dart';
import '../widgets/Home/notebookWidget.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopHome(),
            NavHome(),
            Expanded(child: NotebookWidget()),
          ],
        ),
      ),
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
