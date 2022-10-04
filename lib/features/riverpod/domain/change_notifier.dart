import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeNotifierProvider = ChangeNotifierProvider<Counter>((ref) => Counter());

class Counter extends ChangeNotifier {
  int count;

  Counter([this.count = 0]);

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}
