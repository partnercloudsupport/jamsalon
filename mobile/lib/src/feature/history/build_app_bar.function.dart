import 'package:jamsalon/src/feature/_.imports.dart';

AppBar buildAppBar({BuildContext context}) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black87),
    elevation: 0.0,
    title: Text(
      'Check In History',
      style: TextStyle(color: Colors.black87),
    ),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        color: Colors.black,
        icon: Icon(Icons.filter_list),
        onPressed: () {},
      ),
    ],
    // bottom: PreferredSize(
    //   child: Container(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: <Widget>[
    //         RaisedButton(
    //           color: Colors.black,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20.0),
    //           ),
    //           child: Text(
    //             'Repeat Last Check In',
    //             style: TextStyle(color: Colors.white),
    //           ),
    //           onPressed: () {},
    //         ),
    //         RaisedButton(
    //           color: Colors.black,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20.0),
    //           ),
    //           child: Text(
    //             'Filter',
    //             style: TextStyle(color: Colors.white),
    //           ),
    //           onPressed: () {},
    //         ),
    //       ],
    //     ),
    //   ),
    //   preferredSize: Size(50.0, 50.0),
    // ),
  );
}
