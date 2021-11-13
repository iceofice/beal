import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/typography.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                text: "Login",
                style: "h1",
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: neutralColor,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: neutralColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: neutralColor,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: neutralColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
