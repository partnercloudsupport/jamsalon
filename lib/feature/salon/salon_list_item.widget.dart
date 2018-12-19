import 'package:flutter/material.dart';
import 'package:jamsalon/shared/model/salon.model.dart';
import 'package:jamsalon/jam/widget/index.dart';

class SalonListItem extends StatelessWidget {
  final Salon salon;

  const SalonListItem({Key key, this.salon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('-BUILDING- SalonListItem');
    return Card(
      color: this.salon.color,
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
              padding: EdgeInsets.only(top: 40.0, bottom: 30.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  JamConditionallyShowContainer(
                    condition: this.salon.isOpen,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(98, 141, 49, 1.0),
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: Text(
                        'OPEN',
                        style: TextStyle(color: Colors.white, fontSize: 9.0),
                      ),
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
    );
  }
}
