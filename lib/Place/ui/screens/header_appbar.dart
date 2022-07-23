import 'package:flutter/material.dart';
import 'package:nscando_trips_app/widgets/gradient_back.dart';

import '../widgets/card_image_list.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Welcome", 250.0), CardImageList()],
    );
  }
}
