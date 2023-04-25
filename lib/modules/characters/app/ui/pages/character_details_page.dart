import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/cards/card_information_character.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
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
    return Scaffold(
      backgroundColor: AppColors.COLOR_WHITE,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        heroTag: "Hero1",
        onPressed: () {},
      ),
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Text(
              characterObject.character!.id.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              characterObject.character!.isFavourite.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ButtonWidget(
                text: "Compartir Página",
                onPressed: () {
                  Share.share("Mira mi pagina https://flutteracademy.app/");
                },
              ),
            ),
            GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CardInformationCharacter(
                      title: "Gender: ",
                      description: characterObject.character!.gender!),
                  CardInformationCharacter(
                      title: "Gender: ",
                      description: characterObject.character!.gender!),
                  CardInformationCharacter(
                      title: "Gender: ",
                      description: characterObject.character!.gender!),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.9,
                ))
          ],
        ),
      ),
    );
  }
}
