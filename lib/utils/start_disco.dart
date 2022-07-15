import 'dart:async';

Timer? dscoTimer;
void disco(Function() startDisco) {
  dscoTimer = Timer.periodic(
      const Duration(milliseconds: 100), (Timer t) => startDisco());
}
