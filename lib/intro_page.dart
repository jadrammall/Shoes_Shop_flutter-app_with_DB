import 'package:flutter/material.dart';
import 'home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:80, right:80, bottom:40, top: 120),
              child: Image.asset('assets/images/logo.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "Shop from home with our new app",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Your favorite shoes shop",
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),

            const Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context){
                  return const Home();
                },
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const Spacer(),
          ],
        )
    );
  }

}
