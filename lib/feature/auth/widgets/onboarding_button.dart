import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          isScrollControlled: true,
          builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.9,
            expand: false,
            builder: (context, scrollController) => VStack([
              bigestVSpacing,
              'Masuk'
                  .text
                  .textStyle(bigTextTheme)
                  .color(ColorStyle.primaryColor)
                  .bold
                  .makeCentered(),
              bigestVSpacing,
              'Username'
                  .text
                  .textStyle(smallTextTheme)
                  .color(ColorStyle.primaryColor)
                  .make(),
              smallestVSpacing,
              TextFormField(
                decoration: formFieldStyle('Username'),
              ),
              bigestVSpacing,
              'Password'
                  .text
                  .textStyle(smallTextTheme)
                  .color(ColorStyle.primaryColor)
                  .make(),
              smallestVSpacing,
              TextFormField(
                decoration: formFieldStyle('Password'),
              ),
              bigestVSpacing,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.goNamed(RouteName.home);
                },
                child: 'Masuk'.text.textStyle(mediumTextTheme).make(),
              ),
              bigestVSpacing,
              HStack([
                'Kamu belum memiliki akun? '
                    .text
                    .textStyle(smallTextTheme)
                    .make(),
                'Daftar'
                    .text
                    .textStyle(smallTextTheme)
                    .color(ColorStyle.primaryColor)
                    .italic
                    .make(),
              ]).centered(),
            ]).px(50),
          ),
        );
      },
      child: 'Mulai'
          .text
          .textStyle(bodyTextTheme)
          .color(ColorStyle.primaryColor)
          .make(),
    ).p16();
  }
}
