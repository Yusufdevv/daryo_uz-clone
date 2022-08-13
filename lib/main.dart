import 'package:daryo_uz_clone/provider/articles_provider.dart';
import 'package:daryo_uz_clone/screens/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const  [ Locale('uz', 'UZ'), Locale('ru', 'RU')],
    path: 'assets/lang',
    fallbackLocale:const Locale('uz', 'UZ'),
    saveLocale: true,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ArticlesProvider(),
        child: const HomeScreen(),
      ),
    );
  }
}
