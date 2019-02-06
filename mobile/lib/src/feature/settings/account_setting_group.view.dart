import 'package:flutter/material.dart';

import 'info_setting_tile.widget.dart';
import 'setting_group.widget.dart';
import 'text_setting_tile.widget.dart';

class AccountSettingGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('[Settings] -BUILDING- AccountSettingGroup');
    return SettingGroup(
      title: 'Account',
      children: <Widget>[
        InfoSettingTile(
          icon: Icon(Icons.account_circle),
          title: 'Change Username',
          subtitle: 'amsakanna@gmail.com.',
          content: Text(
              'To change your email address, please contact us at help@jamstation.com.'),
        ),
        TextSettingTile(
          icon: Icon(Icons.vpn_key),
          title: 'Change Password',
          subtitle: '********',
          value: '',
          obscureText: true,
          onSubmit: (value) => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Success'),
                    content: Text('Your password is now changed to $value'),
                  )),
        ),
      ],
    );
  }
}
