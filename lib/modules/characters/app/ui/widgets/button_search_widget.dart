import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/modules/characters/app/ui/widgets/text_search_field.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';

class ButtonSearchWidget extends StatelessWidget {
  const ButtonSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppColors.COLOR_WHITE),
          borderRadius: BorderRadius.circular(5)),
      child: TextSearchField(),
    );
  }
}
