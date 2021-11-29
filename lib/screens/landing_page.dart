import 'package:flutter/material.dart';

import 'package:beal/screens/register_page.dart';
import 'package:beal/screens/login_page.dart';
import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/widgets.dart';

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
                  child: const StyledTypography(
                    "Home For Barterers",
                    style: "h2",
                    weight: "light",
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
                  child: const StyledTypography(
                    "Let's begin your barter journey!",
                    style: "h4",
                    weight: "light",
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    buttonColor: primaryColor,
                    buttonText: "Register",
                    margin: 4,
                  ),
                  StyledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    buttonColor: backgroundColor,
                    buttonText: "Login",
                    borderWidth: 2,
                    borderColor: primaryColor,
                    margin: 4,
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
