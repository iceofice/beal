import 'package:beal/widgets/button.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Home For Barterers',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: neutralColor,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/illusLandingPage.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Let's begin your barter journey!",
                    style: TextStyle(
                      fontSize: 20,
                      color: neutralColor,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledButton(
                    onPressed: () => {},
                    buttonColor: primaryColor,
                    buttonText: "Register",
                  ),
                  StyledButton(
                    onPressed: () => {},
                    buttonColor: backgroundColor,
                    buttonText: "Login",
                    borderWidth: 2,
                    borderColor: primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
