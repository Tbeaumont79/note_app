import 'package:flutter/material.dart';
import 'package:noteapp/constant.dart';
import 'package:provider/provider.dart';
import '../data/noteData.dart';
import '../widgets/Note/displayNote.dart';
import '../provider/noteProvider.dart';
import 'package:gradient_text/gradient_text.dart';
import '../data/cardData.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NoteProvider _noteProvider = Provider.of(context, listen: true);
    int currentCardIndex = _noteProvider.getCurrentIndex;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Color(0xff58585F),
              ),
              Positioned(
                  right: 0,
                  child: Text('Back',
                      style: TextStyle(color: Color(0xff58585F), fontSize: 16)))
            ],
          ),
        ),
        title: GradientText(
          noteData[currentCardIndex][0].noteCategory,
          style: TextStyle(fontWeight: FontWeight.bold),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(cardData[currentCardIndex].firstColor),
                Color(cardData[currentCardIndex].secondColor)
              ]),
        ),
        backgroundColor: Color(kbackgroundColor),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_horiz,
                color: Color(0xff58585F),
              ))
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: noteData[currentCardIndex].length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                SizedBox(
                  height: index == 0 ? 50 : 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              noteData[currentCardIndex][index].month,
                              style: TextStyle(color: Color(0xff58585F)),
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 10),
                        decoration: BoxDecoration(
                            color: Color(0xff2C2932),
                            borderRadius: BorderRadius.circular(20)),
                        child: DisplayNote(
                          noteTitle:
                              noteData[currentCardIndex][index].noteTitle,
                          noteDescription:
                              noteData[currentCardIndex][index].noteDescription,
                          noteDate: noteData[currentCardIndex][index].noteDate,
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
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
