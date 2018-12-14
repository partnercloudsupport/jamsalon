import 'dart:io';
import 'package:flutter/material.dart';
import 'package:jamsalon/jam/widgets/jam_profile_photo/jam_profile_photo_bottom_bar.widget.dart';

class JamProfilePhoto extends StatefulWidget {
  JamProfilePhoto();

  @override
  _JamProfilePhotoState createState() => _JamProfilePhotoState();
}

class _JamProfilePhotoState extends State<JamProfilePhoto> {
  File photo = File('/storage/emulated/0/Download/images (1).jpeg');

  void setPhoto(File newPhoto) {
    setState(() {
      this.photo = newPhoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) =>
                JamProfilePhotoBottomBar(setPhoto),
          );
        },
        highlightElevation: 20.0,
        child: CircleAvatar(
          child: this.photo != null
              ? null
              : Icon(
                  Icons.account_circle,
                  size: 200.0,
                  color: Colors.white24,
                ),
          radius: 100.0,
          backgroundColor: Colors.pink,
          backgroundImage: this.photo == null ? null : FileImage(this.photo),
        ),
      ),
    );
  }
}
