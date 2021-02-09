import 'package:flutter/material.dart';

class TopBarReminder extends StatelessWidget {
  const TopBarReminder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Thusday, February, 9, 2021',
            style: TextStyle(
                color: Color(0xffF1F6FD),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Text('🚀')
        ],
      ),
    );
  }
}
