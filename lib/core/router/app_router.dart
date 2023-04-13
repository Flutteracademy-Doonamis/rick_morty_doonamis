import 'package:go_router/go_router.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/pages/character_home_page.dart';
import 'package:rick_morty_doonamis/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
  characterHome,
  home2,
}

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.startApp.name,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
              path: 'characterHome',
              name: AppRoutes.characterHome.name,
              builder: (context, state) {
                return const CharacterHomePage();
              }),
        ]),
    GoRoute(
        path: '/home2',
        name: AppRoutes.home2.name,
        builder: (context, state) {
          return const HomePage();
        }),
  ],
);
