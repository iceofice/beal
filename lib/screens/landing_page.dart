import 'package:beal/widgets/widgets.dart';
import 'package:beal/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  final TextEditingController _test = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    // color: neutralColor,
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: neutralColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: neutralColor,
                    ),
                  ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: secondaryColor,
                  //   ),
                  // ),
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
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
