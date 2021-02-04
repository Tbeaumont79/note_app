import 'package:flutter/material.dart';
import '../widgets/Home/notebookWidget.dart';
import '../widgets/Home/topHome.dart';
import '../widgets/Home/NavHome.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TopHome(),
          NavHome(),
          Expanded(child: NotebookWidget()),
        ],
      ),
    );
  }
}
