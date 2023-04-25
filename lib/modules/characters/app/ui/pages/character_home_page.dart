import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_doonamis/core/locator/locator.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_cubit.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_state.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/button_search_widget.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/cards/card_character.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/popupmenu_button_widget.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/widgets/layout/background_image.dart';

class CharacterHomePage extends StatelessWidget {
  const CharacterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        bloc: locator<CharacterCubit>(),
        builder: (context, state) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              heroTag: "Hero1",
              onPressed: () {},
            ),
            body: Stack(
              children: [
                BackgroundImage(),
                ListView(
                  // physics: NeverScrollableScrollPhysics(),
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
                    ),
                    // SHOW CARDS
                    Container(
                      color: AppColors.COLOR_WHITE,
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 15,
                        bottom: 60,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.character.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CardCharacter(
                                character: state.character[index],
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
