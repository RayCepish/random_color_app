import 'dart:async';
import 'package:flutter/material.dart';

Timer? partyTimer;
void onPartyTeamAdd(
  Function() addParticipant,
) {
  partyTimer =
      Timer.periodic(const Duration(seconds: 1), (Timer t) => addParticipant());
}

List<Widget> partyItems = [
  Align(
    alignment: Alignment.topCenter,
    child: Image.asset('disco_ball.gif'),
  ),
  Align(
    alignment: Alignment.bottomLeft,
    child: Image.asset('disco_parrot.gif'),
  ),
  Align(
    alignment: Alignment.bottomRight,
    child: Image.asset('disco_parrot.gif'),
  ),
  Align(
    alignment: Alignment.bottomCenter,
    child: Image.asset('snoop.gif'),
  ),
  Align(
    alignment: Alignment.bottomLeft,
    child: Image.asset('parrot_party.gif'),
  ),
  Align(
    alignment: Alignment.bottomCenter,
    child: Image.asset('parrot_party.gif'),
  ),
  Align(
    alignment: Alignment.bottomRight,
    child: Image.asset('parrot_party.gif'),
  ),
];
