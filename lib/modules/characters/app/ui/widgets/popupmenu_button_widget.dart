import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';

class PopupmenuButtonWidget extends StatelessWidget {
  const PopupmenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        icon: Icon(
          Icons.menu,
          color: AppColors.COLOR_WHITE,
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                  value: 'Filtros',
                  child: Text(
                    "Limpiar filtros",
                    style: TextStyle(color: AppColors.COLOR_BLACK),
                  )),
            ]);
  }
}
