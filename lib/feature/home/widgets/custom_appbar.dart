import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: '${FlutterI18n.translate(context, "home.hello")}, Muhammad Miftah'
          .text
          .textStyle(bodyTextTheme)
          .color(Colors.black)
          .make(),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
