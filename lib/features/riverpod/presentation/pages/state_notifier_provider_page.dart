import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/widgets/goals_app_bar.dart';
import 'package:my_goals_1/features/riverpod/domain/state_notifier.dart';
import 'package:my_goals_1/features/riverpod/presentation/widgets/custom_button.dart';

class StateNotifierProviderPage extends ConsumerWidget {
  static const routeName = '/state_notifier_provider';

  const StateNotifierProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProviderData = ref.watch(stateNotifierProvider);

    return Scaffold(
      appBar: const GoalsAppBar(
        title: "State Notifier Provider",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stateProviderData.toString(),
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            text: "Increment",
            onPressed: () {
              ref.watch(stateNotifierProvider.notifier).increment();
            },
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            text: "Decrement",
            onPressed: () => ref.watch(stateNotifierProvider.notifier).decrement(),
          ),
        ],
      ),
    );
  }
}
