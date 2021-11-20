import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nutri_app/presentation/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nutri_app/presentation/routes/router.gr.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> pageList = [
    PageViewModel(
      useScrollView: true,
      // title: "Your Nutritionist",
      titleWidget: Text(
        "Nutritious",
        style: TextStyle(fontSize: 44),
      ),
      body: "An app for getting nutritions around foods!",
      image: Container(
        padding: const EdgeInsets.all(50.0),
        child: SvgPicture.asset(
          'assets/pic1.svg',
          fit: BoxFit.contain,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Search By Image",
        style: TextStyle(fontSize: 44),
      ),
      body: "Grab the nutrition value by an Image from gallery/camera!",
      image: Container(
        padding: const EdgeInsets.all(50.0),
        child: SvgPicture.asset(
          'assets/pic2.svg',
          fit: BoxFit.contain,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Search By Name",
        style: TextStyle(fontSize: 44),
      ),
      body: "Grab the nutrition value by a fruit/vegetable's name!",
      image: Container(
        padding: const EdgeInsets.all(50.0),
        child: SvgPicture.asset(
          'assets/pic3.svg',
          fit: BoxFit.contain,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Developers",
        style: TextStyle(fontSize: 44),
      ),
      // body: "Team that build the app!",
      bodyWidget: Column(
        children: [
          const Text("Team that build the app!",
              style: TextStyle(fontSize: 22)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/shakil.jpg'),
                    radius: 30,
                  ),
                  Text("Shakil", style: TextStyle(fontSize: 18)),
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/shadik.jpg'),
                    radius: 30,
                  ),
                  Text("Shadik", style: TextStyle(fontSize: 18)),
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/maruf.jpg'),
                    radius: 30,
                  ),
                  Text("Maruf", style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          )
        ],
      ),
      image: Container(
        padding: const EdgeInsets.all(50.0),
        child: SvgPicture.asset(
          'assets/team.svg',
          fit: BoxFit.contain,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pageList,
        onDone: () {
          context.router.replace(HomeScreenRoute());
        },
        onSkip: () {
          context.router.replace(HomeScreenRoute());
        },
        showSkipButton: true,
        showNextButton: true,
        next: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: primaryGreenColor,
              borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
        ),
        skip: Container(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        done: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: primaryGreenColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Done",
            style: TextStyle(color: Colors.white),
          ),
        ),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0), //size of dots
          color: Color(0xffefefef), //color of dots
          activeSize: Size(22.0, 10.0),
          activeColor: primaryGreenColor,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
