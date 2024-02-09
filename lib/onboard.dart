import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  double opacity = 0.0;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  double opacity4 = 0.0;
  double opacity5 = 0.0;

  @override
  void initState() {
    super.initState();

    // Trigger the animations after a delay when the widget is initialized
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        opacity1 = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        opacity2 = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        opacity3 = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        opacity4 = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 6), () {
      setState(() {
        opacity5 = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home_dog.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: opacity1,
                  child: Container(
                    height: 40,
                    width: 300,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "Are",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: opacity2,
                  child: Container(
                    height: 40,
                    width: 300,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "You",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: opacity3,
                  child: Container(
                    height: 40,
                    width: 300,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "Ready?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: opacity5,
                  child: Container(
                    height: 80,
                    width: 300,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "For a new friend!!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
