import 'package:flutter/material.dart';
import 'package:youth_connect/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Connect With Everyone',
      body: 'Connect your idea with buisness people around the world',
      footer: SizedBox(
        height: 45,
        width: 300,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              elevation: 8
          ),
          onPressed: () {},
          child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        ),
      ),
      image: Center(
        child: Image.asset('assets/pic1.jpg'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        )
      )
    ),
    PageViewModel(
        title: 'Have Access Everywhere!',
        body: 'You can have access to all the prominent companies in the wolrd',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Why to wait!", style: TextStyle(fontSize: 20),),
          ),
        ),
        image: Center(
          child: Image.asset('assets/pic2.jpg'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Here We Start!',
        body: 'there is alot of Young Enterprenuers out there ready for the economic war',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/pic3.jpeg'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUISNESS FIELD'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15,15),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}

