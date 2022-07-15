import 'package:flutter/material.dart';
import 'package:random_color/enum/party_cycle.dart';
import 'package:random_color/utils/party_team.dart';
import 'package:random_color/utils/start_disco.dart';
import 'package:random_color/widgets/party_widget.dart';
import 'package:random_color/widgets/end_party_dialog.dart';
import 'package:random_color/widgets/description.dart';
import 'dart:math';

class RandomColorApp extends StatefulWidget {
  const RandomColorApp({Key? key}) : super(key: key);
  @override
  State<RandomColorApp> createState() => _RaState();
}

class _RaState extends State<RandomColorApp> {
  bool _isPayingRespect = false;
  bool isStarted = false;
  Random random = Random();
  int _onTapCounter = 10;
  int _partyTeamCounter = 0;

  late int _redForRGBO;
  late int _greenForRGBO;
  late int _blueForRGBO;
  late double opacityForRGBO;
  late PartyCycle _partyStage;

  void randomColorGenerator() {
    _redForRGBO = random.nextInt(255);
    _greenForRGBO = random.nextInt(255);
    _blueForRGBO = random.nextInt(255);
    opacityForRGBO = random.nextDouble();
  }

  @override
  void initState() {
    super.initState();
    _partyStage = PartyCycle.preparing;
    randomColorGenerator();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_onTapCounter == 1) {
          if (_partyStage != PartyCycle.end) _partyStage = PartyCycle.party;
          if (!isStarted) {
            isStarted = true;
            disco(() => setState(() => randomColorGenerator()));
          }
          onPartyTeamAdd(
            () => setState(() {
              if (_partyTeamCounter < partyItems.length) {
                _partyTeamCounter++;
              } else {
                if (!_isPayingRespect) _partyStage = PartyCycle.end;
              }
            }),
          );
        } else {
          _onTapCounter--;
          setState(() => randomColorGenerator());
        }
      },
      child: Scaffold(
        backgroundColor: Color.fromRGBO(
          _redForRGBO,
          _greenForRGBO,
          _blueForRGBO,
          opacityForRGBO,
        ),
        body: _body(_partyStage),
      ),
    );
  }

  Widget _body(PartyCycle partyStage) {
    switch (partyStage) {
      case PartyCycle.preparing:
        return MainDescription(onTapCounter: _onTapCounter);
      case PartyCycle.party:
        return PartyStage(partyItemsToShow: _partyTeamCounter);
      case PartyCycle.end:
        return EndOfParty(onPayRespect: () {
          _isPayingRespect = true;
          _partyStage = PartyCycle.party;
        });
    }
  }
}
