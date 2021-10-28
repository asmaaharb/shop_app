import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/splash/view.dart';
import 'core/router/router.dart';
import 'core/sharedHelper/shared_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedHelper.init();
   runApp(
  // EasyLocalization(
  //     supportedLocales: [Locale('en', 'US'), Locale('ar', 'AR')],
  //     path:'assets/langs',
  //     fallbackLocale: Locale('en', 'US'),
  //     child:
  MyApp()
  // ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  localizationsDelegates: context.localizationDelegates,
      //supportedLocales: context.supportedLocales,
     // locale: context.locale,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(fontFamily: "Comfortaa"),
      debugShowCheckedModeBanner: false,
      title: "7.Tech",
      home: SplashView(),
    );
  }
}
