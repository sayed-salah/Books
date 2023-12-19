import 'package:bloc/bloc.dart';
import 'package:books_app/core/local_cash_helper.dart';
import 'package:flutter/material.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<ChangeLocaleState> {
  LocalCubit() : super(ChangeLocaleState(locale: const Locale('en')));

  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode =
        await LanguageCacheHelper().getCachedLanguageCode();

    emit(ChangeLocaleState(locale: Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await LanguageCacheHelper().cacheLanguageCode(languageCode);
    print('language ${languageCode}');
    emit(ChangeLocaleState(locale: Locale(languageCode)));
  }
}
