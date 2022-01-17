import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../locallization/constant.dart';
import '../locallization/locale_keys.dart';
import 'second_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.main_title.tr()),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(LocaleKeys.main_bodytext.tr()),
            buildIconButton(context),
            OutlinedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  )),
              child: Text(LocaleKeys.main_navigatorButtonText.tr()),
            ),
            OutlinedButton(
              onPressed: () => context.resetLocale(),
              child: Text(LocaleKeys.main_resetButtonText.tr()),
            ),
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.language,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        context.setLocale(AppConstant.EN_LOCALE);
                        Navigator.pop(context);
                      },
                      child: const Text('en_US'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        context.setLocale(AppConstant.TR_LOCALE);
                        Navigator.pop(context);
                      },
                      child: const Text('tr_TR'),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
