import 'package:flutter/material.dart';

Text text(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    textAlign: TextAlign.center,
  );
}
