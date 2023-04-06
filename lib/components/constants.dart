import 'package:flutter/material.dart';

final kCircleDecoration = BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(color: Colors.pink, width: 2),
);

final kTextContainer = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.pink,
    gradient: LinearGradient(colors: [Colors.red, Colors.pink]));
