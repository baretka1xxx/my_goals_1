import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/widgets/goals_app_bar.dart';
import 'package:my_goals_1/features/riverpod/domain/provider.dart';

class ProviderPage extends ConsumerWidget {
  static const routeName = '/provider';

  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerData = ref.watch(welcomeProvider);

    return Scaffold(
      appBar: const GoalsAppBar(
        title: "Provider",
      ),
      body: Center(
        child: Text(
          providerData,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
