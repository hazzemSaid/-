import 'package:go_router/go_router.dart';
import 'package:quran_app/features/boarding/presentation/view/screens/boarding1.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';
import 'package:quran_app/features/setting/presentation/view/screen/setting.dart';
import 'package:quran_app/features/splash/presentation/screens/splash.dart';

import '../../features/listen_quran/presentation/view/screen/QuranPlayerCharacter.dart';
import '../../features/splash/presentation/screens/getstart.dart';

class Routes {
  static const initial = '/';
  static const home = '/home';
  static const search = '/search';
  static const setting = '/setting';
  static const boarding1 = '/boarding1';
  static const getstart = '/Routes';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const QuranPlayerCharacter(),
      ),
      GoRoute(
        path: '/setting',
        builder: (context, state) => const settingsScreen(),
      ),
      GoRoute(
          path: '/getstart',
          builder: (context, state) => const IntroductoryScreen()),
      GoRoute(
          path: '/boarding1',
          builder: (context, state) => const WelcomeBoardingViewONE()),
    ],
  );
}
