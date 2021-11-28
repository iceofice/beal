import 'package:flutter/material.dart';

import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/button.dart';
import 'package:beal/widgets/input.dart';
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
                    ),
                    InputText(
                      "Username",
                      controller: _userNameController,
                    ),
                    InputText(
                      "Password",
                      controller: _passwordController,
                      isPassword: true,
                      icon: Icons.lock,
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
                              "Register With",
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
