import 'package:animation_demo/src/animation_demo.dart';
import 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: SimpleAnimationPage),
    AutoRoute(page: BouncingButtonPage),
  ],
)
class $AppRouter {}
