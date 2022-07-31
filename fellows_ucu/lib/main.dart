import 'package:fellows_ucu/configure_web.dart';
import 'package:fellows_ucu/presentation/pages/home/home_page.dart';
import 'package:fellows_ucu/presentation/routes/routes.dart';
import 'package:fellows_ucu/values/values.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

void main() {
  configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        //theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}
