import 'package:flutter/material.dart';

class AppComponent {
  static Widget customInkWell({Function()? onTap, required Widget child}) =>
      InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: child,
      );
}
