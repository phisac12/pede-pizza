import 'package:flutter/material.dart';
import 'package:pizza_facil/themes/app_colors.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenWidget()
      );
  }
}

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SplashScreen(
        seconds:5,
        backgroundColor: AppColors.primary,
        navigateAfterSeconds: const HomePage(),
        loaderColor: Colors.redAccent
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child:Container(
              height:150,
              width:150,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/images/logo.png'),
                  fit:BoxFit.contain
                )
              ),
            )
          )
        ],
      )
    ]);
  }
}
