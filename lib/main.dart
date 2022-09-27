import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/core.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Builder(
          builder: (context) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
            title: 'Pastiangkut Customer',
            localizationsDelegates: [
              FlutterI18nDelegate(
                translationLoader: FileTranslationLoader(
                  fallbackFile: 'id_ID',
                  basePath: 'assets/i18n',
                  forcedLocale: const Locale('id', 'ID'),
                ),
              ),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            builder: (context, widget) {
              ScreenUtil.init(
                context,
                designSize: const Size(360, 800),
                minTextAdapt: true,
                splitScreenMode: true,
              );
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.05),
                child: widget!,
              );
            },
            theme: theme(context),
          ),
        );
      },
    );
  }
}
