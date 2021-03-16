import 'package:flutter/material.dart';
import 'package:locale_demo/generated/l10n.dart';

class _ListTile extends StatelessWidget {
  final Widget title;
  final onTap;

  _ListTile({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: title,
        onTap: onTap,
      ),
    );
  }
}

class GeneralPage extends StatelessWidget {
  GeneralPage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedeced),
      appBar: AppBar(
        title: Text(S.of(context).general_appbar_title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _ListTile(
              title: Text(S.of(context).general_darkmode),
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_language),
              onTap: () {
                Navigator.pushNamed(context, '/language');
              },
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_textsize),
              onTap: () {},
            ),
            _ListTile(
              title: Text(S.of(context).general_background),
              onTap: () {},
            ),
            _ListTile(
              title: Text(S.of(context).general_sticker),
              onTap: () {},
            ),
            _ListTile(
              title: Text(S.of(context).general_sourcenet),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_speaker),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_discover),
              onTap: () {},
            ),
            _ListTile(
              title: Text(S.of(context).general_tool),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_backup),
              onTap: () {},
            ),
            _ListTile(
              title: Text(S.of(context).general_storage),
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            _ListTile(
              title: Text(S.of(context).general_clear),
              onTap: () {},
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
