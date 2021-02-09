import 'package:flutter/material.dart';

class NavHome extends StatelessWidget {
  const NavHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _currentRouteName = ModalRoute.of(context).settings.name;
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.only(top: 40, bottom: 5),
                  child: Text('Catégories',
                      style:
                          TextStyle(color: Color(0xff7C7D83), fontSize: 18)))),
          Row(
            children: [
              InkWell(
                onTap: () {
                  if (_currentRouteName != '/') {
                    return Navigator.of(context).pushNamed('/');
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: _currentRouteName == '/'
                          ? Color(0xffF1F6FD)
                          : Color(0xff2C2932),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'All Notes',
                    style: TextStyle(
                      color: _currentRouteName == '/'
                          ? Color(0xff2C2932)
                          : Color(0xff999AA1),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_currentRouteName != '/reminder')
                    Navigator.of(context).pushNamed('/reminder');
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      color: _currentRouteName == '/reminder'
                          ? Color(0xffF1F6FD)
                          : Color(0xff2C2932),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'Reminders',
                    style: TextStyle(
                      color: _currentRouteName == '/reminder'
                          ? Color(0xff2C2932)
                          : Color(0xff999AA1),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_currentRouteName != '/sharedWith') {
                    return Navigator.of(context).pushNamed('/sharedWith');
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: _currentRouteName == '/sharedWith'
                          ? Color(0xffF1F6FD)
                          : Color(0xff2C2932),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'Shared with Me',
                    style: TextStyle(
                         color: _currentRouteName == '/sharedWith'
                          ? Color(0xff2C2932)
                          : Color(0xff999AA1),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
