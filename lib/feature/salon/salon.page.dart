import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:jamsalon/feature/salon/salon_search_bar.widget.dart';
import 'package:jamsalon/feature/salon/store/salon.viewmodel.dart';
import 'package:jamsalon/shared/build_bottom_navigation_bar.function.dart';
import 'package:jamsalon/feature/salon/salon_list.widget.dart';
import 'package:jamsalon/shared/store/app.state.dart';

class SalonPage extends StatefulWidget {
  SalonPage();

  @override
  _SalonPageState createState() => _SalonPageState();
}

class _SalonPageState extends State<SalonPage> {
  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonPage');
    return StoreConnector<AppState, SalonViewModel>(
      converter: (Store<AppState> store) => SalonViewModel.fromStore(store),
      builder: (BuildContext context, SalonViewModel salonViewModel) =>
          Scaffold(
            bottomNavigationBar: buildBottomNavigationBar(context, 1),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SalonSearchBar(
                    () {
                      salonViewModel.searchAction();
                      Navigator.pushNamed(context, '/search_location');
                    },
                  ),
                  SalonList(salonViewModel.list),
                  // SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
    );
  }
}
