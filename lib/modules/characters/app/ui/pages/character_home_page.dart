import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/button_search_widget.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/popupmenu_button_widget.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/widgets/layout/background_image.dart';

class CharacterHomePage extends StatelessWidget {
  const CharacterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  "assets/images/rickandmorty-letters.png",
                ),
              ),
              Container(
                color: AppColors.COLOR_BLACK_GREY,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Row(
                  children: [
                    // FILTER SECTION
                    ButtonSearchWidget(),
                    Spacer(),
                    PopupmenuButtonWidget(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
