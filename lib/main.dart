import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lenguage/pages/home_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en',  'US'),Locale('ru',  'RU'), Locale('ja', 'JP'),],
        path: 'assets/translations',
        fallbackLocale: const Locale('en',  'US'),
        child:  const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
