import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack([
        VxBox()
            .width(context.screenWidth)
            .height(130.h)
            .color(Colors.red)
            .roundedSM
            .make(),
        'Nama Produk'.text.textStyle(bodyTextTheme).make(),
        HStack([
          'Rp56000'
              .text
              .textStyle(
                mediumTextTheme.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
              .make()
              .expand(),
          Icon(
            Icons.shopping_cart_outlined,
            size: 20.sp,
            color: ColorStyle.primaryColor,
          ),
        ]),
      ]).p(6),
    ).roundedSM.border(color: Colors.grey).make();
  }
}
