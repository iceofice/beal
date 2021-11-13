import 'package:beal/widgets/widgets.dart';
import 'package:beal/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _username = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputText(
                controller: _username,
                labelText: 'Username',
                icon: Icons.person,
              ),
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
                  child: const StyledTypography(
                    text: "Let's begin your barter journey!",
                    style: "h4",
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledButton(
                    onPressed: () => {print("a")},
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
