import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/change_notifier_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/future_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/state_notifier_provider_page.dart';
import 'package:my_goals_1/features/riverpod/presentation/pages/welcome_page.dart';

class RiverpodLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        name: 'welcome',
        key: ValueKey('welcome'),
        child: WelcomePage(),
      ),
      if (state.routeInformation.location == ProviderPage.routeName)
        const BeamPage(
          name: 'provider',
          key: ValueKey('provider'),
          child: ProviderPage(),
        )
      else if (state.routeInformation.location == ChangeNotifierProviderPage.routeName)
        const BeamPage(
          name: 'change-notifier-provider',
          key: ValueKey('change_notifier_provider'),
          child: ChangeNotifierProviderPage(),
        )
      else if (state.routeInformation.location == StateNotifierProviderPage.routeName)
        const BeamPage(
          name: 'state-notifier-provider',
          key: ValueKey('state_notifier_provider'),
          child: StateNotifierProviderPage(),
        )
      else if (state.routeInformation.location == FutureProviderPage.routeName)
        const BeamPage(
          name: 'future-provider',
          key: ValueKey('future_provider'),
          child: FutureProviderPage(),
        ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        WelcomePage.routeName,
        ProviderPage.routeName,
        ChangeNotifierProviderPage.routeName,
        StateNotifierProviderPage.routeName,
        FutureProviderPage.routeName
      ];
}
