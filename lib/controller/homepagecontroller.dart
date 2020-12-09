import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appPageStateNotifier = ChangeNotifierProvider((ref) => HomePageState());

class HomePageState extends ChangeNotifier {
  var isValidCPF = false;

  void validCpf(value) {
    if (CPF.isValid(value)) {
      isValidCPF = true;
    } else {
      isValidCPF = false;
    }
    notifyListeners();
  }
}
