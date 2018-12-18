import 'package:flutter/material.dart';
import 'package:jamsalon/jam/jam.dart';

class MultilineAssistiveText extends StatelessWidget {
  final List<Text> textWidgets;
  final double spaceBetweenTexts;
  final double spaceAfterBullets;
  final Color color;
  final double width;
  final bool showLines;
  // final bool highlightLastItem;

  const MultilineAssistiveText({
    Key key,
    this.textWidgets = const [],
    this.spaceBetweenTexts = 10.0,
    this.spaceAfterBullets = 20.0,
    this.color = Colors.black45,
    this.width = double.infinity,
    this.showLines = false,
    // this.highlightLastItem = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = -1;
    int lastIndex = this.textWidgets.length - 1;

    return Container(
      constraints: BoxConstraints.loose(Size.fromWidth(this.width)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: this.textWidgets.map((textWidget) {
            ++index;
            bool isLastItem = (index == lastIndex);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // this.buildBullet(
                    //     fill: this.highlightLastItem && isLastItem),
                    this.buildBullet(),
                    SizedBox(width: this.spaceAfterBullets),
                    Expanded(child: textWidget),
                  ],
                ),
                JamConditionallyRenderContainer(
                  condition: !isLastItem,
                  child: this.showLines
                      ? this.buildLine()
                      : SizedBox(height: this.spaceBetweenTexts),
                ),
              ],
            );
          }).toList()),
    );
  }

  Widget buildBullet({bool fill = false}) {
    return Container(
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: fill ? this.color : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.0,
          color: this.color,
        ),
      ),
    );
  }

  Widget buildLine() {
    return Container(
      margin: EdgeInsets.only(left: 3.0),
      height: this.spaceBetweenTexts,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 2.0,
            color: this.color,
          ),
        ),
      ),
    );
  }
}
