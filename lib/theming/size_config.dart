/// Library to handle responsive layout.
library responsive_layout;

// Flutter imports:
import 'package:flutter/material.dart';

extension ReponsiveSize on num {
  static late MediaQueryData _mediaQueryData;
  static late double _pixelRatio,
      _screenWidth,
      _screenHeight,
      _widthInPx,
      _heightInPx;
  static late double _aa;

  init(BuildContext context, {double? width, double? height}) {
    _mediaQueryData = MediaQuery.of(context);
    _pixelRatio = _mediaQueryData.devicePixelRatio;
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    _heightInPx = height ?? 1920;
    _widthInPx = width ?? 1080;
    _aa = MediaQuery.of(context).textScaleFactor;
  }

  double get h => (this / _heightInPx) * _screenHeight;
  double get w => (this / _widthInPx) * _screenWidth;
  double get screenHeight => _screenHeight * this;
  double get screenWidth => _screenWidth * this;
  double get f => toDouble();
}

extension ResponsiveSize on Size {
  Size s() => Size(width.w, height.h);
}

extension ResponsiveOffset on Offset {
  s() => Offset(dx.w, dy.h);
}

/// Wraper that handles responsive layout.
///
/// wrap root widget below [MaterialApp] with [Responsive] widget.
/// [designHeight] and [designWidth] refers to the height and width of the figma design.
/// A default value of 1920 and 1080 was set.
///
/// Api usage
///
/// ```dart
/// Container(
///  height: 30.h
///  width: 30.w)
///```
///to get a percentage of the default screen height
///```dart
///height: 1.screenHeight,
///```
///Returns 100 percent of the default height
///where the height return is the default height divided by [this]
class Responsive extends StatelessWidget {
  final Widget child;
  final double? designWidth, designHeight;
  const Responsive({
    Key? key,
    required this.child,
    this.designHeight,
    this.designWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReponsiveSize(0).init(context, width: designWidth, height: designHeight);
    return child;
  }
}


/// Draw line btween location
/// chat
/// call
/// profile
/// contiune should take back tor profile
/// remove payment from prfile
/// remove country in profile
/// remove card in tra histry
/// from and to in trancation histryis not working
/// change email and pin and phone number
/// error message.
/// pop up redirectly to veryfy email on failed fund wallet
/// Notifications should be working
/// movieng withingout clicking something in shipping
/// pick up time
/// image in shipping not 
/// address in map shoudl be only delivery addess 
/// refresh with draw down
/// make pop up for notification show only once
/// add card 
/// log out
/// 
/// 
/// cant't click profile from orders rider
/// add time to trnasaction histroy 
/// add purpose to transaction histroy