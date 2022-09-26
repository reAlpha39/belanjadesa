import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';
import '../auth.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZStack([
        VxBox()
            .width(context.screenWidth)
            .height(context.screenHeight)
            .bgImage(
              const DecorationImage(
                image: AssetImage(
                  bg,
                ),
                fit: BoxFit.cover,
              ),
            )
            .make(),
        VxBox(
          child: VStack([
            VStack([
              'Belanjadesa.id'
                  .text
                  .textStyle(
                    biggestTextTheme.copyWith(
                      fontSize: 32.sp,
                    ),
                  )
                  .color(Colors.white)
                  .italic
                  .makeCentered(),
            ]).centered().expand(),
            const OnboardingButton()
          ]),
        )
            .width(context.screenWidth)
            .height(context.screenHeight)
            .color(ColorStyle.primaryColor.withOpacity(0.5))
            .make(),
      ]),
    );
  }
}
