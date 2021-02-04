import 'package:flutter/material.dart';
import '../../constant.dart';

class TopHome extends StatelessWidget {
  const TopHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hello, Thibault',
            style: TextStyle(
                color: Color(0xffF1F6FD),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Stack(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      image: AssetImage('assets/thibault.JPG'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 5,
              right: 0,
                child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Color(kred), borderRadius: BorderRadius.circular(100)),
            ))
          ])
        ],
      ),
    );
  }
}
