import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/buttons/favourite_button_widget.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/theme/app_fonts.dart';

class TopDetailsCharacterWidget extends StatelessWidget {
  final CharacterDTO characterDTO;
  const TopDetailsCharacterWidget({Key? key, required this.characterDTO})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 380,
          color: AppColors.COLOR_BLACK_GREY,
        ),
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            "assets/images/other-image-rickandmorty.jpeg",
            width: double.infinity,
            height: 180,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
            color: AppColors.COLOR_WHITE,
            onPressed: () {
              context.pop();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //CHARACTER CIRCLES
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.transparent,
                      child: CircleAvatar(
                        backgroundColor: AppColors.COLOR_WHITE,
                        radius: 55,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            characterDTO.image!,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: FavouriteButtonWidget(
                        character: characterDTO,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (characterDTO.status == "Alive")
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.COLOR_GREEN,
                        ),
                      ),
                    Text(
                      characterDTO.status!,
                      style: TEXT_THEME_WHITE.titleMedium,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  characterDTO.name!,
                  style: TEXT_THEME_WHITE.bodyLarge,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  characterDTO.species!,
                  style: TEXT_THEME_WHITE.titleMedium,
                ),

                //CHARACTER INFORMATION
              ],
            ),
          ),
        )
      ],
    );
  }
}
