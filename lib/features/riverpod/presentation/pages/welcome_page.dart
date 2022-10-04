import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/widgets/goals_app_bar.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/change_notifier_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/future_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/state_notifier_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/widgets/custom_alert.dart';
import 'package:my_goals_1/features/riverpod/presentation/widgets/custom_button.dart';

class WelcomePage extends ConsumerWidget {
  static const routeName = '/';

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const GoalsAppBar(
        title: "Welcome",
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Provider",
              onPressed: () => _navigateProviderPage(context),
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomButton(
              text: "Change Notifier Provider",
              onPressed: () => _navigateToChangeNotifierProviderPage(context),
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomButton(
              text: "State Notifier Provider",
              onPressed: () => _navigateToStateNotifierProviderPage(context),
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomButton(
              text: "Future Provider",
              onPressed: () => _navigateToFutureProviderPage(context),
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomButton(
              text: "Custom Dialog",
              onPressed: () => _openDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateProviderPage(BuildContext context) {
    context.beamToNamed(ProviderPage.routeName);
  }

  void _navigateToChangeNotifierProviderPage(BuildContext context) {
    context.beamToNamed(ChangeNotifierProviderPage.routeName);
  }

  void _navigateToStateNotifierProviderPage(BuildContext context) {
    context.beamToNamed(StateNotifierProviderPage.routeName);
  }

  void _navigateToFutureProviderPage(BuildContext context) {
    context.beamToNamed(FutureProviderPage.routeName);
  }

  void _openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlert(
          title: "My Custom Dialog",
          firstButtonText: "Close",
          firstActionButton: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
