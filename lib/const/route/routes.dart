import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:makhekh/features/auth/login/ui/login_screen.dart';
import 'package:makhekh/features/auth/register/ui/signup_screen.dart';
import 'package:makhekh/features/auth/reset_password/ui/reset_password.dart';
import 'package:makhekh/features/auth/verify_email/ui/verify_email_signup.dart';
import 'package:makhekh/features/auth/forget_password/ui/forget_password.dart';
import 'package:makhekh/features/instructor/instructor_create_course_one/ui/screen/create_course_screen_one.dart';
import 'package:makhekh/features/instructor/instructor_create_course_two/ui/screen/create_course_screen_two.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/screens/instructor_knowledge_one.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/screens/instructor_knowledge_three.dart';
import 'package:makhekh/features/instructor/instructor_knowledge_page/ui/screens/instructor_knowledge_two.dart';
import 'package:makhekh/features/onboarding/ui/language_screen.dart';
import 'package:makhekh/features/onboarding/ui/onboarding.dart';
import 'package:makhekh/const/route/routes_names.dart';
import 'package:makhekh/features/student/home/ui/home_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: RoutesNames.languageScreen, page: () => const LanguageScreen()),
  GetPage(
    name: RoutesNames.onboarding,
    page: () => const OnboardingScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.login,
    page: () => const LoginScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.signup,
    page: () => const RegisterScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: RoutesNames.verifyEmailSignUp,
    page: () => const VerifyEmailSignUp(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.forgetPassword,
    page: () => const ForgetPassword(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: RoutesNames.resetPassword,
    page: () => const ResetPassword(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.instructorKnowledgeOne,
    page: () => const InstructorKnowledgeOne(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.instructorKnowledgeTwo,
    page: () => const InstructorKnowledgeTwo(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.instructorKnowledgeThree,
    page: () => const InstructorKnowledgeThree(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.instructorCreateCourseOne,
    page: () => const InstructorCreateCourseOne(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.instructorCreateCourseTwo,
    page: () => const InstructorCreateCoursetwo(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),

  GetPage(
    name: RoutesNames.homeScreen,
    page: () => const HomeScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
