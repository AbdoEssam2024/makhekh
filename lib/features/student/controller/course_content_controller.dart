import 'package:get/get.dart';
import 'package:makhekh/features/student/data/content_section_data.dart';

class CourseContentController extends GetxController {
  var sections = <Section>[
    Section('Section 1: Introduction to Figma'.tr,
        'Learn the basics of Figma and its interface.'.tr, 4, 8),
    Section('Section 2: UI Design Principles',
        'Understand essential UI design principles.'.tr, 4, 8),
    Section('Section 3: UX Research Methods',
        'Explore various UX research methods.'.tr, 4, 8),
    Section('Section 4: Prototyping in Figma'.tr,
        'Create interactive prototypes in Figma.'.tr, 4, 8),
    Section('Section 5: Web Design Fundamentals'.tr,
        'Learn the fundamentals of web design.'.tr, 4, 8),
  ].obs;

  var sectionExpanded = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    sectionExpanded.assignAll(List.generate(sections.length, (index) => false));
  }

  void toggleSection(int index) {
    sectionExpanded[index] = !sectionExpanded[index];
    sectionExpanded.refresh();
  }
}