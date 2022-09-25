import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _MainPage(
      key: key,
    );
  }
}

class _MainPage extends StatelessWidget {
  const _MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Halo, Muhammad Miftah'
            .text
            .textStyle(bodyTextTheme)
            .color(Colors.black)
            .make(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: VStack([
        TextFormField(
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
            hintText: 'Cari',
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.all(10),
          ),
        ),
        mediumVSpacing,
        VxBox()
            .width(context.screenWidth)
            .height(100.h)
            .bgImage(
              const DecorationImage(
                image: AssetImage(banner),
                fit: BoxFit.cover,
              ),
            )
            .roundedSM
            .make(),
        mediumVSpacing,
        'Kategori Produk'.text.textStyle(bodyTextTheme).make(),
        mediumVSpacing,
        VxBox(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            VStack([
              Image.asset(
                makanan,
                width: 30.w,
              )
                  .box
                  .p16
                  .color(ColorStyle.primaryColorLighter)
                  .roundedFull
                  .make(),
              'Makanan'.text.textStyle(bodyTextTheme).make(),
            ]),
            VStack([
              Image.asset(
                fashion,
                width: 30.w,
              )
                  .box
                  .p16
                  .color(ColorStyle.primaryColorLighter)
                  .roundedFull
                  .make(),
              'Fashion'.text.textStyle(bodyTextTheme).make(),
            ]),
            VStack([
              Image.asset(
                bangunan,
                width: 30.w,
              )
                  .box
                  .p16
                  .color(ColorStyle.primaryColorLighter)
                  .roundedFull
                  .make(),
              'bangunan'.text.textStyle(bodyTextTheme).make(),
            ]),
          ]).p16(),
        )
            .width(context.screenWidth)
            .border(color: ColorStyle.primaryColorLighter)
            .roundedSM
            .make(),
      ]).px16(),
    );
  }
}
