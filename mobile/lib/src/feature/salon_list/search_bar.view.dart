import 'package:jamsalon/src/feature/_.imports.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnectors.salonListSearchBar(
      builder: (vm) => Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Color.fromRGBO(68, 68, 68, 0.1),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/search_location'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 15.0),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.black38,
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      vm.selectedLocation.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 5.0),
                    child: Text(
                      'Change',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
