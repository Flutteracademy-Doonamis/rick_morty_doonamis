import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_doonamis/core/router/app_router.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/pages/character_details_page.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/buttons/favourite_button_widget.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';

class CardCharacter extends StatelessWidget {
  final CharacterDTO character;
  const CardCharacter({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoutes.characterDetail.name,
            extra: CharacterDetailsPageObject(
              character: character,
            ));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Stack(
                children: [
                  Image.network(
                    character.image ?? 'imagen provisional',
                    width: 154,
                    height: 154,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: FavouriteButtonWidget(
                      character: character,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
