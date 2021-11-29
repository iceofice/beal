import 'package:flutter/material.dart';

import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/button.dart';
import 'package:beal/widgets/input.dart';
import 'package:beal/widgets/oauth.dart';
import 'package:beal/widgets/typography.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo_no-text.png',
                  width: 110,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: StyledTypography(
                  "Register",
                  style: "h1",
                  color: neutralColor[0],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    InputText(
                      "E-mail Address",
                      controller: _emailController,
                      icon: Icons.alternate_email,
                      validator: const ["required", "email"],
                    ),
                    InputText(
                      "Username",
                      controller: _userNameController,
                      icon: Icons.person,
                    ),
                    InputText(
                      "Password",
                      controller: _passwordController,
                      icon: Icons.lock,
                      isPassword: true,
                      isLast: true,
                      validator: const ["required", "invalid"],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                child: StyledButton(
                  onPressed: () => {},
                  buttonText: "Register",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const StyledTypography(
                  "Already have an account? Login here!",
                  style: "small",
                ),
              ),
              const OAuthContainer("Register With"),
            ],
          ),
        ),
      ),
    );
  }
}
