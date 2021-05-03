import 'package:flutter/material.dart';

import './screens/MainScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Gmail',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ),
  );
}
