import 'package:flutter/material.dart';
import 'package:noteapp/models/userModel.dart';

class DisplayNote extends StatelessWidget {
  final String noteTitle;
  final String noteDescription;
  final String noteDate;
  final List<UserModel> sharedWith;
  const DisplayNote(
      {Key key,
      this.noteTitle,
      this.noteDescription,
      this.noteDate,
      this.sharedWith})
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
          Text(noteTitle,
              style: TextStyle(
                  color: Color(0xffEEF3FA),
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Text(noteDescription,
              style: TextStyle(
                height: 1.5,
                color: Color(0xff58585F),
              )),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(noteDate, style: TextStyle(color: Color(0xff58585F))),
                  if (sharedWith.length > 0)
                    Container(
                        height: 20,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            primary: false,
                            itemCount: sharedWith.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                                  height: 5,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              sharedWith[index].imgProfile),
                                          fit: BoxFit.cover)),
                                ))),
                ]),
          )
        ],
      ),
    );
  }
}
