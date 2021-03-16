// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `General`
  String get general_appbar_title {
    return Intl.message(
      'General',
      name: 'general_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get general_darkmode {
    return Intl.message(
      'Dark Mode',
      name: 'general_darkmode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get general_language {
    return Intl.message(
      'Language',
      name: 'general_language',
      desc: '',
      args: [],
    );
  }

  /// `Text Size`
  String get general_textsize {
    return Intl.message(
      'Text Size',
      name: 'general_textsize',
      desc: '',
      args: [],
    );
  }

  /// `Background`
  String get general_background {
    return Intl.message(
      'Background',
      name: 'general_background',
      desc: '',
      args: [],
    );
  }

  /// `My Stickers`
  String get general_sticker {
    return Intl.message(
      'My Stickers',
      name: 'general_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Photos, Videos, Files & Calls`
  String get general_sourcenet {
    return Intl.message(
      'Photos, Videos, Files & Calls',
      name: 'general_sourcenet',
      desc: '',
      args: [],
    );
  }

  /// `Turn Off Speaker`
  String get general_speaker {
    return Intl.message(
      'Turn Off Speaker',
      name: 'general_speaker',
      desc: '',
      args: [],
    );
  }

  /// `Manage Discover`
  String get general_discover {
    return Intl.message(
      'Manage Discover',
      name: 'general_discover',
      desc: '',
      args: [],
    );
  }

  /// `WeChat Tools`
  String get general_tool {
    return Intl.message(
      'WeChat Tools',
      name: 'general_tool',
      desc: '',
      args: [],
    );
  }

  /// `Backup & Migrate Chats`
  String get general_backup {
    return Intl.message(
      'Backup & Migrate Chats',
      name: 'general_backup',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get general_storage {
    return Intl.message(
      'Storage',
      name: 'general_storage',
      desc: '',
      args: [],
    );
  }

  /// `Clear Chat History`
  String get general_clear {
    return Intl.message(
      'Clear Chat History',
      name: 'general_clear',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}