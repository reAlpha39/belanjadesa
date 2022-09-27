import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';
import '../../feature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: _HomePage(key: key),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return VStack([
      TextFormField(
        decoration: formFieldStyle(
          FlutterI18n.translate(context, 'home.searchPlaceholder'),
          suffixIcon: const Icon(Icons.search),
        ),
      ).px16(),
      bigVSpacing,
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
          .make()
          .px16(),
      bigVSpacing,
      FlutterI18n.translate(context, 'home.productCategory')
          .text
          .textStyle(
            mediumTextTheme.copyWith(
              fontWeight: FontWeight.bold,
            ),
          )
          .make()
          .px16(),
      bigVSpacing,
      const HomeTab(),
      mediumVSpacing,
      BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Builder(
            builder: (context) {
              if (cubit.selectedIndex == 0) {
                return GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(16),
                  children: List.generate(
                    10,
                    (index) {
                      return const ProductCard();
                    },
                  ),
                ).expand();
              }
              if (cubit.selectedIndex == 1) {
                return GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(16),
                  children: List.generate(
                    10,
                    (index) {
                      return const ProductCard();
                    },
                  ),
                ).expand();
              }
              return GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(16),
                children: List.generate(
                  10,
                  (index) {
                    return const ProductCard();
                  },
                ),
              ).expand();
            },
          );
        },
      ),
    ]);
  }
}
