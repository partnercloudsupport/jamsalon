import 'package:flutter/material.dart';

class UiConfig {
  static const double SPACE_BEFORE_LIST = 20.0;
  static const double SPACE_AFTER_LIST = 50.0;
  static const EdgeInsets LIST_PADDING = const EdgeInsets.only(
    top: UiConfig.SPACE_BEFORE_LIST,
    bottom: UiConfig.SPACE_AFTER_LIST,
  );
  static const String CURRENT_LOCATION_BUTTON_TEXT = 'Use Current Location';
  static const String SAVED_LIST_CAPTION = 'SAVED ADDRESSES';
  static const String RECENT_LIST_CAPTION = 'RECENT_SEARCHES';
  static const String VIEW_MORE_BUTTON_TEXT = 'VIEW_MORE';
  static const String SEARCH_LOCATION_HELPER_TEXT =
      'Please type atleast 3 letters to start searching.';
  static const String SEARCH_LOCATION_HINT_TEXT =
      'Search for area, street name ...';
}
