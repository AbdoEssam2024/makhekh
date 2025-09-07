import 'package:get/get.dart';

class DataTableController extends GetxController {
  final questionAnswerData = <Map<String, String>>[
    {'question'.tr: 'What is Figma?'.tr, 'answer'.tr: 'A design tool.'.tr},
    {
      'question'.tr: 'How to create components?'.tr,
      'answer'.tr: 'Use the component feature.'.tr
    },
    {
      'question'.tr: 'What are variants?',
      'answer'.tr: 'Different states of a component.'
    },
  ].obs;
}