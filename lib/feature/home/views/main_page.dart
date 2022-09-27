import 'package:belanjadesa/feature/home/views/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/core.dart';
import '../../feature.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: _MainPage(key: key),
    );
  }
}

class _MainPage extends StatelessWidget {
  const _MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BottomNavigationCubit>();
    List<Widget> pages = [
      const HomePage(),
      const NewsPage(),
      'Skoring'.text.makeCentered(),
      'Kontak'.text.makeCentered(),
      'Profil'.text.makeCentered(),
    ];
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: pages.elementAt(cubit.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.selectedIndex,
            selectedItemColor: ColorStyle.primaryColor,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey[70],
            backgroundColor: Colors.white,
            elevation: 10,
            onTap: (value) => cubit.onNavigationTapped(value),
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: FlutterI18n.translate(context, 'main.home'),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.south_america),
                label: FlutterI18n.translate(context, 'main.news'),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.vertical_split),
                label: FlutterI18n.translate(context, 'main.scoring'),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.perm_phone_msg),
                label: FlutterI18n.translate(context, 'main.contact'),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person_outline),
                label: FlutterI18n.translate(context, 'main.profile'),
              ),
            ],
          ),
        );
      },
    );
  }
}
