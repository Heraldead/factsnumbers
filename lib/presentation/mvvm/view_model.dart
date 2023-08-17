import 'package:fl/presentation/mvvm/model_state.dart';
import 'package:fl/presentation/mvvm/service.dart';
import 'package:flutter/material.dart';

class GetFactModel extends ChangeNotifier {
  final GetFactsService getFactsService;
  GetFactModel({required this.getFactsService});

  GetFactNumberState _getFactNumberState = GetFactNumberState(uiStateNumber: 0);

  copyWhithGetFactNumberState({
    int? uiStateNumber,
  }) {
    _getFactNumberState =
        _getFactNumberState.copyWith(uiStateNumber: uiStateNumber);
    notifyListeners();
  }

  getRandomFactMath() async {
    try {
      await getFactsService.getRandomFactMath();
      notifyListeners();
    } catch (e) {}
  }

  getRandomFactYear() async {
    try {
      await getFactsService.getRandomFactYear();
      notifyListeners();
    } catch (e) {
      e.toString();
    }
  }

  get() async {
    try {
      await getFactsService.getFact(_getFactNumberState.uiStateNumber);
      notifyListeners();
    } catch (e) {}
  }
}
