import 'package:flutter/material.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/routing/router.dart';
import 'package:flutter_web_project/services/navigation_service.dart';
import 'package:flutter_web_project/viewmodels/episodes_view_model.dart';
import 'package:flutter_web_project/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
  // runApp(
  //   MultiProvider(
  //     providers: [ChangeNotifierProvider(create: (_) => EpisodesViewModel())],
  //     child: const MyApp(),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      builder: (context, child) => LayoutTemplate(child: child!),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}

/**
 * 
 *  Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  )
 */
