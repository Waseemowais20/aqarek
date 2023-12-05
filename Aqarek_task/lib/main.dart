import 'package:aqarek_task/screens/home/view/dashboard_screen.dart';
import 'package:aqarek_task/screens/home/view/home_screen.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await local.EasyLocalization.ensureInitialized();

  runApp(
    local.EasyLocalization(
      supportedLocales: [Locale('ar', 'JO')],
      path: 'assets/translation',
      // path where the translation files are stored
      fallbackLocale: Locale('ar', 'JO'),
      // fallback locale if the translation file for the device locale is not available
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: false,
          appBarTheme: AppBarTheme(
            surfaceTintColor: Colors.transparent,
          ),
        ),
        home: CurvedSNavigationBarScreen(),
        // Set the textDirection to RTL
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
      ),
    );
  }
}
