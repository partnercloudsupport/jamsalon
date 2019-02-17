import 'package:jamsalon/src/feature/_.imports.dart';

class CheckInExpansionList extends StatefulWidget {
  @override
  CheckInExpansionListState createState() => CheckInExpansionListState();
}

class MyItem {
  MyItem({this.isExpanded: false, this.header, this.body});

  bool isExpanded;
  final String header;
  final String body;
}

class CheckInExpansionListState extends State<CheckInExpansionList> {
  List<MyItem> _items = <MyItem>[
    new MyItem(header: 'header', body: 'body'),
    new MyItem(header: 'header', body: 'body'),
    new MyItem(header: 'header', body: 'body'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !_items[index].isExpanded;
            });
          },
          children: _items.map(
            (MyItem item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text(item.header);
                },
                isExpanded: item.isExpanded,
                body: Container(
                  child: Text("body"),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
