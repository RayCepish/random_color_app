import 'dart:io';
import 'package:flutter/material.dart';
import 'package:random_color/widgets/text_widget.dart';

class EndOfParty extends StatelessWidget {
  final Function() onPayRespect;
  const EndOfParty({required this.onPayRespect, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            text("This is demo party!!"),
            text("To continue please pay respect"),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () => onPayRespect(), child: text("F")),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () => exit(0),
                  child: text("Cancel"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
