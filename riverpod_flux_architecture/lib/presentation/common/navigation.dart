import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseVM<State> extends ChangeNotifier {
  State _state;
  State get state => _state;

  BaseVM(this._state);

  final bag = CompositeSubscription();

  void setState(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("notify => state: $_state");

    notifyListeners();
  }

  void setStateOnly(State Function(State) updater) {
    _state = updater(_state);
    Fimber.d("state: $_state");
  }

  void resetEffects();

  @override
  void dispose() {
    bag.clear();
    super.dispose();
    Fimber.i("dispose VM");
  }
}