import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';
import '../../feature.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _NewsLayout(
        key: key,
      ),
    );
  }
}

class _NewsLayout extends StatelessWidget {
  const _NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack([
      TextFormField(
        decoration: formFieldStyle(
          FlutterI18n.translate(context, 'home.searchPlaceholder'),
          suffixIcon: const Icon(Icons.search),
        ),
      ).px16(),
      bigVSpacing,
      VStack([
        ...List.generate(
          100,
          (index) => VxBox(
            child: HStack([
              VxBox()
                  .width(100.h)
                  .height(100.h)
                  .color(Colors.red)
                  .leftRounded(value: 6)
                  .make(),
              mediumHSpacing,
              VStack([
                'Transformasi ke Era Digital untuk Masa depan yang lebih baik'
                    .text
                    .textStyle(
                      bodyTextTheme.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    .make()
                    .box
                    .width(200.w)
                    .make(),
                smallestVSpacing,
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                    .text
                    .textStyle(smallTextTheme)
                    .maxLines(2)
                    .ellipsis
                    .make()
                    .box
                    .width(200.w)
                    .make(),
              ])
            ]),
          )
              .width(context.screenWidth)
              .height(100.h)
              .roundedSM
              .border(color: Colors.grey)
              .make()
              .px16()
              .pOnly(bottom: 10),
        ),
      ]).scrollVertical().expand()
    ]);
  }
}
