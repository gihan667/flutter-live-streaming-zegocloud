import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Material(
        borderRadius: BorderRadius.circular(kDefaultPadding / 3),
        color: kPrimaryColor,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(kDefaultPadding / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}