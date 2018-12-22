import 'package:flutter/material.dart';
import '../../jam_container/jam_conditionally_render_container.widget.dart';
import 'view_more_button.widget.dart';

class JamExpandableColumn extends StatefulWidget {
  final List<Widget> children;
  final int initialCount;
  final String viewMoreText;
  final Widget viewMoreButton;

  const JamExpandableColumn({
    Key key,
    this.children = const <Widget>[],
    this.initialCount = 3,
    this.viewMoreText = 'VIEW MORE',
    this.viewMoreButton,
  }) : super(key: key);

  @override
  _JamExpandableColumnState createState() => _JamExpandableColumnState();
}

class _JamExpandableColumnState extends State<JamExpandableColumn> {
  int numberOfItemsToShow;
  bool isExpanded;

  @override
  void initState() {
    this.numberOfItemsToShow = widget.initialCount;
    this.isExpanded = (widget.children.length <= widget.initialCount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(children: widget.children.sublist(0, this.numberOfItemsToShow)),
        JamConditionallyRenderContainer(
          condition: !this.isExpanded,
          child: ListTile(
            leading: Text(''),
            onTap: this._expandList,
            title: widget.viewMoreButton != null
                ? widget.viewMoreButton
                : ViewMoreButton(text: widget.viewMoreText),
          ),
        ),
        // Divider(color: Colors.black87),
      ],
    );
  }

  void _expandList() {
    setState(() {
      this.numberOfItemsToShow = widget.children.length;
      this.isExpanded = true;
    });
  }
}
