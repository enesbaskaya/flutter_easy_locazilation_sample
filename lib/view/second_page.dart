import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../locallization/locale_keys.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.main_title.tr()),
        backgroundColor: Colors.orange,
      ),
      body: SizedBox(
        child: Text(LocaleKeys.main_bodytext.tr()),
      ),
    );
  }
}
