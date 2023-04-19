import 'package:get_it/get_it.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_cubit.dart';
import 'package:rick_morty_doonamis/modules/characters/data/repositories/character_repository.dart';
import 'package:rick_morty_doonamis/modules/characters/data/services/character_api_services.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  await registerCubits();
}

registerCubits() async {
  if (!locator.isRegistered<CharacterCubit>()) {
    locator.registerLazySingleton(
      () => CharacterCubit(
        characterRepository: CharacterRepository(
          rickandmortyApiServicesCharacters: CharacterApiServices(),
        ),
      ),
    );
  }
}
