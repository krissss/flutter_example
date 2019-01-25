import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app_scene.dart';

void main() {
  runApp(AppScene());

  if (TargetPlatform.android != null) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}