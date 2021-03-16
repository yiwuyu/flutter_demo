import 'package:flutter/material.dart';
import 'package:locale_demo/generated/l10n.dart';

class LanguageRadio extends StatefulWidget {
  @override
  _LanguageRadioState createState() => _LanguageRadioState();
}

class _LanguageRadioState extends State<LanguageRadio> {
  static const localeList = ['en', 'zh_CN', 'zh_TW'];
  int _localeIndex = 0;
  static String getLocaleName(index) {
    return ['English', '简体中文', '繁體中文'][index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: localeList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: index,
                groupValue: _localeIndex,
                title: Text(getLocaleName(index)),
                onChanged: (index) {
                  print(index);
                  setState(() {
                    _localeIndex = index;
                  });
                  var value = localeList[index].split('_');
                  S.load(Locale(value[0], value.length == 2 ? value[1] : ''));
                },
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(S.of(context).general_language),
        ],
      ),
    );
  }
}

class LanguagePage extends StatelessWidget {
  LanguagePage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).general_language),
      ),
      body: LanguageRadio(),
    );
  }
}
