import 'package:flutter/material.dart';

class UiConfig {
  static const EdgeInsets LIST_PADDING =
      const EdgeInsets.only(top: 20.0, bottom: 50.0);

  static const String SALON_SEARCH_BAR_DEFAULT_TEXT = 'Please set a location.';

  static const String CURRENT_LOCATION_BUTTON_TEXT = 'Use Current Location';
  static const EdgeInsets CURRENT_LOCATION_BUTTON_PADDING =
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);
  static const String SAVED_LIST_CAPTION = 'SAVED ADDRESSES';
  static const String RECENT_LIST_CAPTION = 'RECENT_SEARCHES';
  static const String VIEW_MORE_BUTTON_TEXT = 'VIEW_MORE';
  static const String SEARCH_LOCATION_HELPER_TEXT =
      'Please type atleast 3 letters to start searching.';
  static const String SEARCH_LOCATION_HINT_TEXT =
      'Search for area, street name ...';
}
