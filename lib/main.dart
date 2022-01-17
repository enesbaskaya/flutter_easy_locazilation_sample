import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'locallization/constant.dart';
import 'view/home_page.dart';

void main() async {
  //başlangıçta initial kodlarımızı main'e ekliyoruz.
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    //runApp fonk. EasyLocalization ile sarmalıyoruz. bunun nedeni tüm uygulamaya erişim sağlasın.
    EasyLocalization(
      supportedLocales: AppConstant.SUPPORTED_LOCALE, //desteklenen dilleri belirttik
      path: AppConstant.LANG_PATH, //dil dosyalrının yollarını belirttik
      fallbackLocale: const Locale('tr', 'TR'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Home(),
    );
  }
}
