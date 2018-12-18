import 'package:flutter/material.dart';
import 'package:jamsalon/core/config/ui.config.dart';

class KeywordTooShortMessage extends StatelessWidget {
  const KeywordTooShortMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      alignment: Alignment.center,
      child: Text(UiConfig.SEARCH_LOCATION_HELPER_TEXT),
    );
  }
}
