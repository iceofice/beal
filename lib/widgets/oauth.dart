import 'package:flutter/material.dart';

import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/typography.dart';

class OAuthContainer extends StatelessWidget {
  final String text;

  const OAuthContainer(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32.0),
      child: Column(
        children: [
          SizedBox(
            width: 150,
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: neutralColor,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 0,
                  ),
                  child: StyledTypography(
                    text,
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
    );
  }
}
