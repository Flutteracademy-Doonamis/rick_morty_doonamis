import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_doonamis/core/locator/locator.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_cubit.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_state.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';

class FavouriteButtonWidget extends StatelessWidget {
  final CharacterDTO character;
  const FavouriteButtonWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<CharacterCubit>().toggleCharacters(character.id!);
        print(character.isFavourite);
      },
      child: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          color: AppColors.COLOR_LIGHT_GREY,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.star,
          size: 20,
          color: (character.isFavourite == null)
              ? AppColors.COLOR_WHITE
              : (character.isFavourite!)
                  ? AppColors.COLOR_YELLOW
                  : AppColors.COLOR_WHITE,
        ),
      ),
    );
  }
}
