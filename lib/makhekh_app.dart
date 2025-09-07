import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makhekh/const/binding/app_binding.dart';
import 'package:makhekh/const/route/routes.dart';
import 'package:makhekh/const/localilazion/language_controller.dart';
import 'package:makhekh/const/localilazion/translation.dart';
import 'package:makhekh/features/onboarding/ui/language_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: routes,
          initialBinding: AppBinding(),
          translations: AppTranslation(),
          locale: LangController().initialLang,
          fallbackLocale: const Locale('ar'),
          home: const LanguageScreen(),
        );
      },
    );
  }
}