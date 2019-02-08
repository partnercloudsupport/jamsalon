import 'package:flutter/material.dart';

import '../../core/store_connectors.dart';

class ServiceListFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[CheckIn] -BUILDING- ServiceListFilter');
    return StoreConnectors.serviceListFilter(
      builder: (vm) => Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              // color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: <Widget>[
                  buildRadioButton(
                    text: 'hair',
                    value: 'hair',
                    selectedValue: vm.filter.group?.scopeKey,
                    onChanged: vm.filterByScope,
                  ),
                  buildRadioButton(
                    text: 'face',
                    value: 'face',
                    selectedValue: vm.filter.group?.scopeKey,
                    onChanged: vm.filterByScope,
                  ),
                  buildRadioButton(
                    text: 'body',
                    value: 'body',
                    selectedValue: vm.filter.group?.scopeKey,
                    onChanged: vm.filterByScope,
                  ),
                  buildRadioButton(
                    text: 'whole',
                    value: 'whole',
                    selectedValue: vm.filter.group?.scopeKey,
                    onChanged: vm.filterByScope,
                  ),
                  buildRadioButton(
                    text: 'all',
                    value: 'all',
                    selectedValue: vm.filter.group?.scopeKey ?? 'all',
                    onChanged: vm.filterByScope,
                  ),
                ],
              ),
            ),
          ),
    );
  }

  String initCap(String text) {
    if (text == null) {
      throw new ArgumentError("string: $text");
    }
    if (text.length == 0) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  Column buildRadioButton({
    String text,
    String value,
    String selectedValue,
    void onChanged(String text),
  }) {
    return Column(
      children: <Widget>[
        FlatButton(
          shape: CircleBorder(),
          color: value == selectedValue ? Colors.blueAccent : Colors.black12,
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.hearing,
            color: value == selectedValue ? Colors.white : Colors.black54,
          ),
          onPressed: () => onChanged(value),
        ),
        SizedBox(height: 10.0),
        Text(initCap(text), style: TextStyle(fontSize: 14.0)),
        // Container(
        //   constraints: BoxConstraints(maxWidth: 0.0),
        //   child: Opacity(
        //     opacity: 0.0,
        //     child: Radio(
        //       groupValue: selectedValue,
        //       onChanged: (selected) {
        //         onChanged(value);
        //       },
        //       value: value,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
