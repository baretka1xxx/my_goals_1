import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/widgets/goals_app_bar.dart';
import 'package:my_goals_1/features/riverpod/domain/change_notifier.dart';
import 'package:my_goals_1/features/riverpod/presentation/widgets/custom_button.dart';

class ChangeNotifierProviderPage extends ConsumerWidget {
  static const routeName = '/change_notifier_provider';

  const ChangeNotifierProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeNotifierProviderData = ref.watch(changeNotifierProvider).count;

    return Scaffold(
      appBar: const GoalsAppBar(
        title: "Change Notifier Provider",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            changeNotifierProviderData.toString(),
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            text: "Increment",
            onPressed: () => ref.read(changeNotifierProvider).increment(),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            text: "Decrement",
            onPressed: () => ref.read(changeNotifierProvider).decrement(),
          ),
        ],
      ),
    );
  }
}
