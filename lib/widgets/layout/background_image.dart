
import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/theme/app_images.dart';
import 'package:rick_morty_doonamis/theme/app_spaces.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_BLACK,
      height: AppSpaces.responsiveBackgroundHeight(context),
      width: AppSpaces.responsiveBackgroundWidht(context),
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          AppImages.APP_BACKGROUND_HOME,
          fit: BoxFit.fitHeight,
          colorBlendMode: BlendMode.modulate,
        ),
      ),
    );
  }
}
