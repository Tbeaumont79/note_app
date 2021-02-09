import 'package:flutter/material.dart';
import 'package:noteapp/data/noteData.dart';

import 'displayNote.dart';

class CreateNoteList extends StatelessWidget {
  final List noteDatas;

  const CreateNoteList({Key key, this.noteDatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _currentRouteName = ModalRoute.of(context).settings.name;
    return Container(
        child: ListView.builder(
      itemCount: noteDatas.length,
      itemBuilder: (context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: index == 0 && _currentRouteName == '/note' ? 50 : 15,
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
                                  noteDatas[index].month,
                                  style: TextStyle(color: Color(0xff58585F)),
                                ),
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 15, right: 10),
                            decoration: BoxDecoration(
                                color: Color(0xff2C2932),
                                borderRadius: BorderRadius.circular(20)),
                            child: DisplayNote(
                              noteTitle: noteDatas[index].noteTitle,
                              noteDescription: noteDatas[index].noteDescription,
                              noteDate: noteDatas[index].noteDate,
                              sharedWith: noteDatas[index].sharedWith,
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    ));
  }
}
