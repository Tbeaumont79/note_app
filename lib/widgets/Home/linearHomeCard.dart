import 'package:flutter/material.dart';

class LinearHomeCard extends StatelessWidget {
  final double heigths;
  final double widths;
  final int firstColor;
  final int secondColor;
  final String cardText;

  const LinearHomeCard(
      {Key key,
      this.heigths,
      this.widths,
      this.firstColor,
      this.secondColor,
      this.cardText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(firstColor), Color(secondColor)],
        ),
      ),
      child: Center(
          child: Text(
        cardText,
        style: TextStyle(
            color: Color(0xffF1F6FD),
            fontSize: 28,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
