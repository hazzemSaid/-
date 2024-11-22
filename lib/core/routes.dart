import 'package:go_router/go_router.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';

import '../features/listen_quran/presentation/view/screen/QuranPlayerCharacter.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String notFound = '/404';
  static const String splash = '/splash';
  static const String quran = '/quran';
  static const String azkar = '/azkar';
  static const String prayer = '/prayer';
  static const String adhan = '/adhan';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const QuranPlayerCharacter(),
      ),
    ],
  );
}
