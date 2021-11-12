import 'package:beal/widgets/button.dart';
import 'package:beal/widgets/typography.dart';
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
                  child: StyledTypography(
                    text: "Home For Barterers",
                    style: "h3",
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
                  child: StyledTypography(
                    text: "Let's begin your barter journey!",
                    style: "h3",
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
              StyledTypography(text: "Hello", style: "normal")
            ],
          ),
        ),
      ),
    );
  }
}
