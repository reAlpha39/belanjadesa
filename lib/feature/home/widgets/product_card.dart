import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            Icons.shopping_cart,
            size: 20.sp,
            color: ColorStyle.primaryColor,
          ),
        ]),
      ]).p(6),
    ).roundedSM.border(color: Colors.grey).make();
  }
}
