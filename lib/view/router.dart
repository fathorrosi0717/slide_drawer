import 'package:go_router/go_router.dart';
import 'package:slide_drawer/view/app_scaffold.dart';
import 'package:slide_drawer/view/home_screen/components/main_background_drawer.dart';

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return AppScaffold(child: child);
        },
        routes: [
          GoRoute(
            name: 'mainBackgroundDrawer',
            path: '/',
            builder: (context, state) => const MainBackgroundDrawer(),
          ),
        ],
      ),
    ],
  );
}


final router = buildRouter();
