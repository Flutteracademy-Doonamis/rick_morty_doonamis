import 'package:flutter/material.dart';
import 'package:rick_morty_doonamis/modules/start/app/ui/widgets/layout/background_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
        ],
      ),
    );
  }
}
