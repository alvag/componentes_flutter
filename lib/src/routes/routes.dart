// import 'dart:js';

import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/pages/input_page.dart';
import 'package:componentes_flutter/src/pages/animated_container.dart';
import 'package:componentes_flutter/src/pages/card_page.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/pages/avatar_page.dart';
import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:componentes_flutter/src/pages/slider_page.dart';
import 'package:componentes_flutter/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'animatedComtainer': (context) => AnimatedContainerPage(),
    'card': (context) => CardPage(),
    'inputs': (context) => InputPage(),
    'slider': (context) => SliderPage(),
    'list': (context) => ListPage()
  };
}
