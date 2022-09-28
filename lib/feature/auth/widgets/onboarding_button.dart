import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              I18nText(
                'auth.login',
                child: Text(
                  '',
                  style: bigTextTheme.copyWith(
                    color: ColorStyle.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).centered(),
              bigestVSpacing,
              I18nText(
                'auth.username',
                child: Text(
                  '',
                  style: smallTextTheme.copyWith(
                    color: ColorStyle.primaryColor,
                  ),
                ),
              ),
              smallestVSpacing,
              TextFormField(
                decoration: formFieldStyle(
                  FlutterI18n.translate(
                    context,
                    'auth.username',
                  ),
                ),
              ),
              bigestVSpacing,
              I18nText(
                'auth.password',
                child: Text(
                  '',
                  style: smallTextTheme.copyWith(
                    color: ColorStyle.primaryColor,
                  ),
                ),
              ),
              smallestVSpacing,
              TextFormField(
                decoration: formFieldStyle(
                  FlutterI18n.translate(
                    context,
                    'auth.password',
                  ),
                ),
              ),
              smallVSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 12.h,
                          width: 12.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorStyle.primaryColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        FlutterI18n.translate(context, 'auth.keepLogin')
                            .text
                            .size(smallTextTheme.fontSize)
                            .make(),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FlutterI18n.translate(context, 'auth.forgotPassword')
                        .text
                        .color(ColorStyle.primaryColor)
                        .make(),
                  ),
                ],
              ),
              bigestVSpacing,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.goNamed(RouteName.home);
                },
                child: FlutterI18n.translate(context, 'auth.login')
                    .text
                    .textStyle(mediumTextTheme)
                    .make(),
              ),
              bigestVSpacing,
              HStack([
                FlutterI18n.translate(context, 'auth.noAccount')
                    .text
                    .textStyle(smallTextTheme)
                    .make(),
                FlutterI18n.translate(context, 'auth.register')
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
      child: I18nText(
        'onboarding.button',
        child: Text(
          '',
          style: bodyTextTheme.copyWith(
            color: ColorStyle.primaryColor,
          ),
        ),
      ),
    ).p16();
  }
}
