import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';
import '../../feature.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          renderTab(
            context,
            onTap: () {
              cubit.setIndex(0);
            },
            icon: makanan,
            text: FlutterI18n.translate(context, 'home.food'),
            textColor: cubit.selectedIndex == 0
                ? ColorStyle.primaryColor
                : Colors.black,
          ),
          renderTab(
            context,
            onTap: () {
              cubit.setIndex(1);
            },
            icon: cubit.selectedIndex == 1 ? fashion : fashionInactive,
            text: FlutterI18n.translate(
              context,
              'home.fashion',
            ),
            textColor: cubit.selectedIndex == 1
                ? ColorStyle.primaryColor
                : Colors.black,
          ),
          renderTab(
            context,
            onTap: () {
              cubit.setIndex(2);
            },
            icon: cubit.selectedIndex == 2 ? bangunan : bangunanInactive,
            text: FlutterI18n.translate(
              context,
              'home.building',
            ),
            textColor: cubit.selectedIndex == 2
                ? ColorStyle.primaryColor
                : Colors.black,
          )
        ]);
      },
    );
  }

  Widget renderTab(
    BuildContext context, {
    required VoidCallback onTap,
    required String icon,
    required String text,
    required Color textColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: HStack([
        Image.asset(
          icon,
          width: 20.w,
        ),
        text.text.textStyle(bodyTextTheme).color(textColor).make(),
      ]),
    );
  }
}
