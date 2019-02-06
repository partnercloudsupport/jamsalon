import 'package:flutter/material.dart';
import 'package:jam_flutter_widgets/widgets.dart';
import 'package:jamsalon/src/core/store_connectors.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

class SalonListItem extends StatelessWidget {
  final Salon salon;

  const SalonListItem({Key key, this.salon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[SalonList] -BUILDING- SalonListItem');
    return StoreConnectors.salonListItem(
      builder: (vm) => GestureDetector(
            onTap: () {
              vm.select(this.salon);
              Navigator.of(context).pushNamed('/salon');
            },
            child: Card(
              color: Color(this.salon.color.value),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Container(
                padding: EdgeInsets.all(6.0),
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(top: 40.0, bottom: 30.0, right: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              color: this.salon.isOpen
                                  ? Color.fromRGBO(98, 141, 49, 1.0)
                                  : Color.fromRGBO(200, 98, 49, 1.0),
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            child: Text(
                              this.salon.isOpen ? 'OPEN' : 'CLOSED',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  this.salon.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  this.salon.location,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 110.0,
                      child: Image.asset(
                        this.salon.photoPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    JamConditionallyShowContainer(
                      condition: true,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(
                          Icons.favorite,
                          size: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
