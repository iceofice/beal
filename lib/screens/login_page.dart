import 'package:flutter/material.dart';

import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/button.dart';
import 'package:beal/widgets/input.dart';
import 'package:beal/widgets/oauth.dart';
import 'package:beal/widgets/typography.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _rememberMe = false;

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
                  "Login",
                  style: "h1",
                  color: neutralColor[0],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: loginForm(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                child: StyledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  buttonText: "Login",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const StyledTypography(
                  "You’re new here? Register now!",
                  style: "small",
                ),
              ),
              const OAuthContainer("Login With"),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputText(
            "Username",
            controller: _emailController,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 14,
                    height: 14,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: neutralColor[0],
                    ),
                    child: Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {},
                      checkColor: backgroundColor,
                      activeColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  StyledTypography(
                    "Remember me",
                    style: "small",
                    color: neutralColor[0],
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: StyledTypography(
                  "Forgot Password?",
                  style: "small",
                  weight: "bold",
                  color: neutralColor[0],
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
