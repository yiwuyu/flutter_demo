import 'package:flutter/material.dart';
import 'package:locale_demo/generated/l10n.dart';
import 'package:locale_demo/model/locale.dart';
import 'package:provider/provider.dart';

class LanguageRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: LocaleModel.localeList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var model = Provider.of<LocaleModel>(context);
              return RadioListTile(
                value: index,
                groupValue: model.localeIndex,
                title: Text(LocaleModel.getLocaleName(index)),
                onChanged: (index) {
                  model.switchLocale(index);
                },
              );
            },
          ),
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
