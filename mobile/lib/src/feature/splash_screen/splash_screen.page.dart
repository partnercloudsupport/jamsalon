import 'package:flutter/material.dart';

import '../../core/config/ui.config.dart';
import 'animated_app_logo.widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;

  @override
  void initState() {
    ///
    /// Create [_animationController]
    ///
    this._animationController = AnimationController(
      duration: Duration(seconds: FlutterUiConfig.APP_LOAD_DELAY_FOR_TESTING),
      vsync: this,
    );

    ///
    /// Create [_animation]
    ///
    this._animation = Tween(
      begin: 5.0,
      end: 8.0,
    ).animate(this._animationController);

    ///
    /// Run [_animation] using [_animationController]
    ///
    this._animationController.forward();

    ///
    /// Call [super]
    ///
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromRGBO(233, 236, 239, 1.0),
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedAppLogo(animation: this._animation),
      ),
    );
  }

  @override
  void dispose() {
    this._animationController.dispose();
    super.dispose();
  }
}
