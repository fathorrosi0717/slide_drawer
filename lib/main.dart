import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:slide_drawer/logic/app_logic.dart';
import 'package:slide_drawer/provider/main_background_provider.dart';
import 'package:slide_drawer/view/app_scaffold.dart';
import 'package:slide_drawer/view/router.dart';
import 'package:slide_drawer/view/styles/styles.dart';
import 'package:slide_drawer/injection.dart' as di;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  di.init();
  runApp(const MyApp());
  await appLogic.bootstap();
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainBackgroundProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Slide Drawer',
        theme: ThemeData(
            fontFamily: $styles.text.bodyMedium.fontFamily, useMaterial3: true),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}

AppLogic get appLogic => GetIt.I.get<AppLogic>();
AppStyle get $styles => AppScaffold.style;
