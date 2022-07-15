import 'package:flutter/material.dart';
import 'package:random_color/widgets/text_widget.dart';

class MainDescription extends StatelessWidget {
  final int onTapCounter;
  const MainDescription({
    required this.onTapCounter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: text(
        'There were $onTapCounter clicks \nleft before the show',
      ),
    );
  }
}
