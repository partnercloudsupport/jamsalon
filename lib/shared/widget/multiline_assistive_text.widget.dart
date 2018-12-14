import 'package:jamsalon/shared/widget/conditionally_render_container.widget.dart';
import 'package:flutter/material.dart';

class MultilineAssistiveText extends StatelessWidget {
  final List<String> texts;
  final double spaceBetweenTexts;
  final double spaceAfterBullets;
  final Color color;
  final double width;
  final bool showLines;
  final bool highlightLastItem;

  MultilineAssistiveText({
    this.texts,
    this.spaceBetweenTexts = 10.0,
    this.spaceAfterBullets = 20.0,
    this.color = Colors.black45,
    this.width = double.infinity,
    this.showLines = false,
    this.highlightLastItem = false,
  });

  @override
  Widget build(BuildContext context) {
    int index = -1;
    int lastIndex = this.texts.length - 1;

    return Container(
      constraints: BoxConstraints.loose(Size.fromWidth(this.width)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: this.texts.map((text) {
            ++index;
            bool isLastItem = (index == lastIndex);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    this.buildBullet(
                        fill: this.highlightLastItem && isLastItem),
                    SizedBox(width: this.spaceAfterBullets),
                    Expanded(
                      child: Text(
                        text,
                        style: TextStyle(
                          color: this.color,
                          fontWeight: this.highlightLastItem && isLastItem
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                ConditionallyRenderContainer(
                  show: !isLastItem,
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
