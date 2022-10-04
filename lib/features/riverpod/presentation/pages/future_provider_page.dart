import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/widgets/goals_app_bar.dart';
import 'package:my_goals_1/features/riverpod/data/providers/api_client_provider.dart';

class FutureProviderPage extends ConsumerWidget {
  static const routeName = '/future_provider';

  const FutureProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieProvider);

    return Scaffold(
        appBar: const GoalsAppBar(
          title: "Provider",
        ),
        body: state.when(
          data: ((movie) {
            Text(
              movie.title ?? "",
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
            );
            return null;
          }),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: ((error, stackTrace) => const Text("Error while fetching data")),
        ));
  }
}
