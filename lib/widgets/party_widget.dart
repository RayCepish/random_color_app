import 'package:flutter/material.dart';
import 'package:random_color/utils/party_team.dart';

class PartyStage extends StatelessWidget {
  final int partyItemsToShow;
  const PartyStage({
    Key? key,
    required this.partyItemsToShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < partyItemsToShow; i++)
          if (i < partyItemsToShow) partyItems[i]
      ],
    );
  }
}
