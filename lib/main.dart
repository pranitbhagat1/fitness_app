import 'dart:async';

import 'package:fitness/config_main.dart';
import 'package:fitness/fit_app.dart';
import 'package:flutter/material.dart';

FutureOr<void> main() async {
  await configMain();
  runApp(const FitConnectApp());
}
