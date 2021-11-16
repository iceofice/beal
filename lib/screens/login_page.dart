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
                  'assets/images/logo.png',
                  width: 150,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: StyledTypography(
                  text: "Login",
                  style: "h1",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InputText(
                        controller: _emailController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InputText(
                        controller: _passwordController,
                        isPassword: true,
                        icon: Icons.lock,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? value) => setState(
                            () => _rememberMe = value!,
                          ),
                        ),
                        const StyledTypography(
                          text: "Remember me",
                          style: "small",
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const StyledTypography(
                        text: "Forgot Password?",
                        style: "small",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                child: StyledButton(
                  onPressed: () => {},
                  buttonText: "Login",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const StyledTypography(
                  text: "You’re new here? Register now!",
                  style: "small",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                child: Column(
                  children: [
                    const StyledTypography(
                      text: "---Login With---",
                      style: "small",
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
