import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: AppColors.COLOR_BLUE,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          textStyle: const TextStyle(
            fontSize: 18,
          )),
    );
  }
}
