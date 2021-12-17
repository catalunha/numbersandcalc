import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numbersandcalc/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init('numbersandcalc');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NumbersAndCalc',
      // theme: appThemeDataDark,
      // darkTheme: appThemeDataDark,
      // themeMode: ThemeMode.system,
      getPages: RoutesPages.pageList,
      initialRoute: RoutesPaths.home,
      // locale: const Locale('pt', 'BR'),
      // translationsKeys: AppTranslations.translations,
    );
  }
}
