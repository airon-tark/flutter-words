import 'package:flutter/material.dart';

class AppSize {
  static const fontMicro = 8.0;
  static const fontSmall = 12.0;
  static const fontRegular = 14.0;
  static const fontNormal = 16.0;
  static const fontX = 16.0;
  static const fontMedium = 20.0;
  static const fontBig = 24.0;
  static const fontBigExtra = 30.0;
  static const fontHuge = 36.0;

  static const paddingMicro = 4.0;
  static const paddingSmall = 8.0;
  static const paddingMedium = 12.0;
  static const paddingNormal = 16.0;
  static const paddingBig = 24.0;
  static const paddingBigExtra = 30.0;
  static const paddingHuge = 36.0;
}

class AppFiles {
  static const words_english = 'assets/words_english.json';
  static const words_russian = 'assets/words_russian.json';
}

class AppPadding extends EdgeInsets {
  ///
  static const _micro = AppSize.paddingMicro;
  static const _small = AppSize.paddingSmall;
  static const _normal = AppSize.paddingNormal;
  static const _medium = AppSize.paddingMedium;
  static const _big = AppSize.paddingBig;
  static const _huge = AppSize.paddingHuge;

  // all
  static var allZero = EdgeInsets.all(0.0);
  static var allMicro = EdgeInsets.all(_micro);
  static var allSmall = EdgeInsets.all(_small);
  static var allMedium = EdgeInsets.all(_medium);
  static var allNormal = EdgeInsets.all(_normal);
  static var allBig = EdgeInsets.all(_big);
  static var allHuge = EdgeInsets.all(_huge);

  // bottom
  static var bottomMicro = EdgeInsets.only(bottom: _micro);
  static var bottomSmall = EdgeInsets.only(bottom: _small);
  static var bottomNormal = EdgeInsets.only(bottom: _normal);
  static var bottomMedium = EdgeInsets.only(bottom: _medium);
  static var bottomBig = EdgeInsets.only(bottom: _big);
  static var bottomHuge = EdgeInsets.only(bottom: _huge);

  // bottom left
  static var bottomLeftNormal = EdgeInsets.only(bottom: _normal, left: _normal);

  // bottom right
  static var bottomRightBig = EdgeInsets.only(bottom: _big, right: _big);
  static var bottomRightNormal =
      EdgeInsets.only(bottom: _normal, right: _normal);

  // left
  static var leftMicro = EdgeInsets.only(left: _micro);
  static var leftSmall = EdgeInsets.only(left: _small);
  static var leftNormal = EdgeInsets.only(left: _normal);
  static var leftMedium = EdgeInsets.only(left: _medium);
  static var leftBig = EdgeInsets.only(left: _big);
  static var leftHuge = EdgeInsets.only(left: _huge);

  // top
  static var topMicro = EdgeInsets.only(top: _micro);
  static var topSmall = EdgeInsets.only(top: _small);
  static var topMedium = EdgeInsets.only(top: _medium);
  static var topNormal = EdgeInsets.only(top: _normal);
  static var topBig = EdgeInsets.only(top: _big);
  static var topHuge = EdgeInsets.only(top: _huge);

  // right
  static var rightMicro = EdgeInsets.only(right: _micro);
  static var rightSmall = EdgeInsets.only(right: _small);
  static var rightMedium = EdgeInsets.only(right: _medium);
  static var rightNormal = EdgeInsets.only(right: _normal);
  static var rightBig = EdgeInsets.only(right: _big);
  static var rightHuge = EdgeInsets.only(right: _huge);

  // horizontal
  static var horizontalMicro = EdgeInsets.symmetric(horizontal: _micro);
  static var horizontalSmall = EdgeInsets.symmetric(horizontal: _small);
  static var horizontalMedium = EdgeInsets.symmetric(horizontal: _medium);
  static var horizontalNormal = EdgeInsets.symmetric(horizontal: _normal);
  static var horizontalBig = EdgeInsets.symmetric(horizontal: _big);
  static var horizontalHuge = EdgeInsets.symmetric(horizontal: _huge);

  // vertical
  static var verticalMicro = EdgeInsets.symmetric(vertical: _micro);
  static var verticalSmall = EdgeInsets.symmetric(vertical: _small);
  static var verticalNormal = EdgeInsets.symmetric(vertical: _normal);
  static var verticalBig = EdgeInsets.symmetric(vertical: _big);
  static var verticalHuge = EdgeInsets.symmetric(vertical: _huge);

  // except
  static var exceptRightBig = _exceptRight(_big);
  static var exceptRightNormal = _exceptRight(_normal);
  static var exceptRightSmall = _exceptRight(_small);

  static var exceptBottomNormal = _exceptBottom(_normal);
  static var exceptBottomMedium = _exceptBottom(_medium);
  static var exceptBottomBig = _exceptBottom(_big);
  static var exceptBottomHuge = _exceptBottom(_huge);

  static var exceptTopNormal = _exceptTop(_normal);
  static var exceptTopMedium = _exceptTop(_medium);
  static var exceptTopBig = _exceptTop(_big);

  ///
  AppPadding.bottom(double value) : super.only(bottom: value);

  AppPadding.top(double value) : super.only(top: value);

  AppPadding.right(double value) : super.only(right: value);

  AppPadding.left(double value) : super.only(left: value);

  AppPadding.all(double value) : super.all(value);

  AppPadding.horizontal(double value) : super.symmetric(horizontal: value);

  AppPadding.vertical(double value) : super.symmetric(vertical: value);

  ///
  static _exceptBottom(double size) {
    return EdgeInsets.fromLTRB(size, size, size, 0.0);
  }

  static _exceptTop(double size) {
    return EdgeInsets.fromLTRB(size, 0.0, size, size);
  }

  static _exceptRight(double size) {
    return EdgeInsets.fromLTRB(size, size, 0.0, size);
  }
}
