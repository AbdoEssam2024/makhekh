import 'package:get/get.dart';
import 'package:makhekh/const/localilazion/languages/arabic.dart';
import 'package:makhekh/const/localilazion/languages/english.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': englishLanguage,
    'ar': arabicLanguage,
  };
}
