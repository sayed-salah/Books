import 'package:books_app/constants.dart';
import 'package:books_app/features/splash/presentation/view/splash_screen.dart';
import 'package:books_app/local_cubit/local_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    const BookApp(),
  );
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocalCubit()..getSavedLanguage()),
      ],
      child: BlocBuilder<LocalCubit, ChangeLocaleState>(
        builder: (context, state) {
          return MaterialApp(
            locale: state.locale,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }

              return supportedLocales.first;
            },
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              // textTheme: GoogleFonts.montserratTextTheme(
              // ThemeData.dark().textTheme)
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
