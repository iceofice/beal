import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/button.dart';
import 'package:beal/widgets/input.dart';
import 'package:beal/widgets/typography.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                child: Column(
                  children: [
                    InputText(
                      "Username",
                      controller: _emailController,
                    ),
                    InputText(
                      "Password",
                      controller: _passwordController,
                      isPassword: true,
                      icon: Icons.lock,
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
                                onChanged: (bool? value) => setState(
                                  () => _rememberMe = value!,
                                ),
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                child: StyledButton(
                  onPressed: () => {},
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
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: neutralColor,
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7,
                              vertical: 0,
                            ),
                            child: StyledTypography(
                              "Login With",
                              style: "small",
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: neutralColor,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.email),
                        color: neutralColor,
                        onPressed: () {},
                        splashRadius: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
