import 'package:get/get.dart';
import 'en_strings.dart';
import 'vi_strings.dart';

class AppStrings extends Translations {
  static final String localeCodeVi = 'vi_VN';
  static final String localeCodeEn = 'en_US';

  @override
  Map<String, Map<String, String>> get keys => {
        localeCodeVi: viStrings,
        localeCodeEn: enStrings,
      };

  static String getString(String key) {
    Map<String, String> selectedLanguage = Get.locale.toString() == localeCodeEn ? enStrings : viStrings;
    return selectedLanguage != null && selectedLanguage.containsKey(key) && selectedLanguage[key] != null
        ? selectedLanguage[key]
        : '--Empty String--';
  }

  static String errorUnknown = 'errorUnknown';
  static String errorNoConnection = 'errorNoConnection';
  static String titleError = 'titleError';
  static String titleNotice = 'titleNotice';
  static String buttonClose = 'buttonClose';
  static String buttonCancel = 'buttonCancel';
}
