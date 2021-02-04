import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Home/linearHomeCard.dart';
import '../../data/cardData.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotebookWidget extends StatelessWidget {
  const NotebookWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notebooks',
                      style: TextStyle(color: Color(0xff7C7D83), fontSize: 18)),
                  Icon(
                    Icons.add_circle_outline,
                    color: Color(0xff7C7D83),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  return LinearHomeCard(
                    firstColor: cardData[index].firstColor,
                    secondColor: cardData[index].secondColor,
                    cardText: cardData[index].cardText,
                  );
                },
                staggeredTileBuilder: (index) {
                  return StaggeredTile.count(1, index.isEven ? 1.1 : 1.8);
                }),
          )
        ],
      ),
    );
  }
}
