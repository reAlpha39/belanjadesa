import 'package:belanjadesa/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 32),
          FlutterI18n.translate(context, 'onboarding.title')
              .text
              .color(ColorStyle.primaryColor)
              .size(bigTextTheme.fontSize)
              .bold
              .makeCentered(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon/whatsapp.png',
                  height: 42.h,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon/instagram.png',
                  height: 42.h,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon/facebook.png',
                  height: 42.h,
                ),
              ),
            ],
          ).px16(),
          const SizedBox(height: 24),
          FlutterI18n.translate(context, 'contact.follow')
              .text
              .color(Colors.black)
              .size(smallTextTheme.fontSize)
              .bold
              .makeCentered(),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: () {},
            child: FlutterI18n.translate(context, 'contact.checkFlowchart')
                .text
                .make(),
          ).px64(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
