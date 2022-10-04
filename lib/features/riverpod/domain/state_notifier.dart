import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateNotifierProvider = StateNotifierProvider<StateNotifierTest, int>((ref) => StateNotifierTest());

class StateNotifierTest extends StateNotifier<int> {
  StateNotifierTest() : super(0);

  void increment() => state++;

  void decrement() => state--;
}
