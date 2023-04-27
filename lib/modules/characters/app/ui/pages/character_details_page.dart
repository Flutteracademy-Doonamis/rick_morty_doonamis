import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_doonamis/core/locator/locator.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_cubit.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_state.dart';

import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/cards/card_information_character.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/top_details_character_widget.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/theme/app_fonts.dart';
import 'package:rick_morty_doonamis/widgets/layout/background_image.dart';
import 'package:share_plus/share_plus.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/widgets/buttons/button_widget.dart';

class CharacterDetailsPageObject {
  final CharacterDTO? character;

  CharacterDetailsPageObject({this.character});
}

class CharacterDetailsPage extends StatelessWidget {
  final CharacterDetailsPageObject characterObject;
  const CharacterDetailsPage({Key? key, required this.characterObject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      bloc: locator<CharacterCubit>(),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.COLOR_WHITE,
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            heroTag: "Hero1",
            onPressed: () {
              print(characterObject.character!.hashCode);
              print(state.character
                  .where(
                      (element) => element.id == characterObject.character!.id)
                  .first
                  .hashCode);
            },
          ),
          body: Stack(
            children: [
              const BackgroundImage(),
              ListView(
                padding: EdgeInsets.zero,
                children: [
                  TopDetailsCharacterWidget(
                      characterDTO: state.character
                          .where((element) =>
                              element.id == characterObject.character!.id)
                          .first),
                  //DETAILS CHARACTER
                  Container(
                    color: AppColors.COLOR_WHITE,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //INFORMATION SECTION
                        Text("Información",
                            style: TEXT_THEME_WHITE.displayMedium!),
                        GridView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 1.9,
                            ),
                            children: [
                              CardInformationCharacter(
                                  title: "Gender: ",
                                  description:
                                      characterObject.character!.gender!),
                              CardInformationCharacter(
                                  title: "Origen: ",
                                  description:
                                      characterObject.character!.name!),
                              CardInformationCharacter(
                                  title: "Type: ",
                                  description:
                                      characterObject.character!.status!),
                            ]),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ButtonWidget(
                            text: "Compartir Página",
                            onPressed: () {
                              Share.share(
                                  "Mira mi pagina https://flutteracademy.app/");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
