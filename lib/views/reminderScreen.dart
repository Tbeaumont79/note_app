import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Home/navHome.dart';
import '../widgets/Reminder/TopBarReminder.dart';
import '../constant.dart';
import '../widgets/Note/createNoteList.dart';
import '../data/reminderData.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TopBarReminder(),
          NavHome(),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reminders',
                        style:
                            TextStyle(color: Color(0xff7C7D83), fontSize: 18)),
                    Icon(
                      Icons.add_circle_outline,
                      color: Color(0xff7C7D83),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: CreateNoteList(
              noteDatas: reminderData,
            ),
          )
        ],
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
    ));
  }
}
