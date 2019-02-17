import 'package:flutter/material.dart';

class AnimatedAppLogo extends AnimatedWidget {
  AnimatedAppLogo({Key key, @required Animation animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation animation = listenable;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(),
        Text(
          'JAMSALON',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.title.copyWith(
                letterSpacing: animation.value,
              ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              width: 250.0,
              height: 2.0,
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 20.0),
            Text(
              '... LOADING ...',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontStyle: FontStyle.italic,
                    letterSpacing: 5.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
