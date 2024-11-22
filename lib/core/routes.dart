import 'package:go_router/go_router.dart';
import 'package:quran_app/features/home/presentation/view/screens/HomeScreen.dart';
import 'package:quran_app/features/setting/presentation/view/screen/setting.dart';

import '../features/listen_quran/presentation/view/screen/QuranPlayerCharacter.dart';

class Routes {
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
      GoRoute(
        path: '/setting',
        builder: (context, state) => const settingsScreen(),
      )
    ],
  );
}
