import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/theme/app_colors.dart';
import 'package:rick_morty_doonamis/theme/app_fonts.dart';

class CardInformationCharacter extends StatelessWidget {
  final String title;
  final String description;
  const CardInformationCharacter({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.COLOR_GREY,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info,
                size: 16,
                color: AppColors.COLOR_GREY,
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: title,
                    style:
                        TextStyle(color: AppColors.COLOR_BLACK, fontSize: 20),
                  ))
            ],
          ),
          RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: description,
                style: TEXT_THEME_WHITE.bodyLarge!
                    .copyWith(color: AppColors.COLOR_GREY),
              ))
        ],
      ),
    );
  }
}
