import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nutri_app/presentation/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    new Future.delayed(
      const Duration(seconds: 1),
      () {
        // AutoRouter.of(context).replace(HomeScreenRoute());
        context.router.replace(IntroScreenRoute());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //SizedBox(height: size.height * 0.2),
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/icon.png",
                height: 244,
                width: 194,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Expanded(
              flex: 1,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Nutritious',
                    textStyle: TextStyle(fontSize: 32),
                    speed: const Duration(milliseconds: 30),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 42.0, vertical: 32.0),
            //   child: LinearProgressIndicator(
            //     color: Colors.green,
            //     minHeight: 10.0,
            //     backgroundColor: Color(0xffC7D437),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
