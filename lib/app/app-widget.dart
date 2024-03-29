import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vagas_dod/app/home/home-widget.dart';
import 'package:vagas_dod/app/splash-widget.dart';
import 'package:vagas_dod/widgets/useful-widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dod Vagas',
      theme: ThemeData(
        primaryColor: UsefulWidget.primaryColor,
        fontFamily: 'roboto',
      ),
      routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => HomeWidget()
      },
      home: SplashWidget(),
    );
  }
}
