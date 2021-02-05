import 'package:flutter/material.dart';

class DisplayNote extends StatelessWidget {
  final String noteTitle;
  final String noteDescription;
  final String noteDate;
  const DisplayNote(
      {Key key, this.noteTitle, this.noteDescription, this.noteDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(noteTitle, style: TextStyle(color: Color(0xffEEF3FA), fontSize: 18, fontWeight: FontWeight.bold)),
          Text(noteDescription, style: TextStyle(height: 1.5, color: Color(0xff58585F),)),
          Text(noteDate, style: TextStyle(color: Color(0xff58585F))),
        ],
      ),
    );
  }
}
