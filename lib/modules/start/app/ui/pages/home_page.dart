import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_doonamis/core/router/app_router.dart';
import 'package:rick_morty_doonamis/theme/app_fonts.dart';
import 'package:rick_morty_doonamis/theme/app_spaces.dart';
import 'package:rick_morty_doonamis/widgets/buttons/button_widget.dart';
import 'package:rick_morty_doonamis/widgets/layout/background_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //BACKGROUND IMAGE
                Image.asset("assets/images/rickandmorty-letters.png"),

                //INFORMATION PAGE

                Column(
                  children: [
                    Text(
                      "Bienvenido \na Rick and Morty",
                      style: TEXT_THEME_WHITE.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: AppSpaces.spaceTexts,
                    ),
                    Text(
                      "En esta prueba, evaluaremos su capacidad para construit la aplicación mediante el análisis de código y la reproducción del siquiente diseño.",
                      style: TEXT_THEME_WHITE.bodyMedium,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),

                //NAVIGATION BUTTON
                ButtonWidget(
                  text: "CONTINUAR",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) {
                    //     return const CharacterHomePage();
                    //   }),
                    // );

                    context.goNamed(AppRoutes.characterHome.name);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
