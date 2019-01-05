import 'package:flutter/material.dart';
import 'package:jamsalon_bloc/jamsalon_bloc.dart';

class KeywordTooShortMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      alignment: Alignment.center,
      child: Text(UiConfig.SEARCH_LOCATION_HELPER_TEXT),
    );
  }
}
