import 'package:auto_route/auto_route.dart';
import 'package:nutri_app/presentation/screens/home_screen.dart';
import 'package:nutri_app/presentation/screens/image_preview_screen.dart';
import 'package:nutri_app/presentation/screens/intro_screen.dart';
import 'package:nutri_app/presentation/screens/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: IntroScreen),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: ImagePreviewScreen),
    // AutoRoute(page: InspectPage),
  ],
)
class $AppRouter {}
