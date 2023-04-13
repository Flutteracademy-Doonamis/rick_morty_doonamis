import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/theme/app_fonts.dart';

class TextSearchField extends StatelessWidget {
  const TextSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return SizedBox(
      width: 200,
      child: TextField(
        controller: textEditingController,
        onChanged: (_) {},
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.COLOR_WHITE,
            ),
            hintText: "Buscar personaje...",
            border: InputBorder.none,
            hintStyle: TEXT_THEME_WHITE.bodyMedium!.copyWith(
              color: AppColors.COLOR_GREY,
            )),
      ),
    );
  }
}
