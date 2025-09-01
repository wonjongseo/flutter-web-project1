import 'dart:html' as html;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/translate_on_hover.dart';

extension HoverExtenstions on Widget {
  // 'app-container'
  static final appContainer = html.window.document.getElementById(
    'app-container',
  );

  // Widget get showCursorOnHover {
  //   // return MouseRegion(
  //   //   child: this,
  //   //   onHover: (event) => appContainer?.style.cursor = 'pointer',
  //   //   onExit: (event) => appContainer?.style.cursor = 'default',
  //   // );

  // }
  Widget get showCursorOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // ← 이 한 줄이면 끝!
      child: this,
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }
}
