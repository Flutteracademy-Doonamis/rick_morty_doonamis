import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/pages/character_details_page.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/pages/character_home_page.dart';
import 'package:rick_morty_doonamis/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
  characterHome,
  characterDetail,
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
              },
              routes: [
                GoRoute(
                  path: 'characterDetails',
                  name: AppRoutes.characterDetail.name,
                  // pageBuilder: (context, state) => CustomTransitionPage(
                  //     key: state.pageKey,
                  //     child: CharacterDetailsPage(
                  //       characterObject:
                  //           state.extra as CharacterDetailsPageObject,
                  //     ),
                  //     transitionsBuilder:
                  //         (context, animation, secondaryAnimation, child) {
                  //       //         FadeTransition(
                  //       //   opacity: animation,
                  //       //   child: child,
                  //       // ),

                  //       const begin = Offset(-1.0, 0.0);

                  //       const end = Offset.zero;

                  //       final tween = Tween(begin: begin, end: end);

                  //       final offsetAnimation = animation.drive(tween);

                  //       return SlideTransition(
                  //         position: offsetAnimation,
                  //         child: child,
                  //       );
                  //     }),

                  builder: (context, state) {
                    return CharacterDetailsPage(
                      characterObject:
                          state.extra as CharacterDetailsPageObject,
                    );
                  },
                )
              ]),
        ]),
    GoRoute(
        path: '/home2',
        name: AppRoutes.home2.name,
        builder: (context, state) {
          return const HomePage();
        }),
  ],
);
