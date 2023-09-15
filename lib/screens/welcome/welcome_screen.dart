import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_streaming_zego/components/primary_button.dart';
import 'package:live_streaming_zego/constants.dart';
import 'package:live_streaming_zego/helper/navigation_helper.dart';
import 'package:live_streaming_zego/screens/home/home_screen.dart';
import 'package:live_streaming_zego/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Spacer(),

              SvgPicture.asset(
                'assets/images/live.svg',
                height: SizeConfig.screenHeight / 3,
              ),

              const SizedBox(
                height: kDefaultPadding * 2,
              ),

              const Text(
                "Let's Live Stream something cool!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),

              const Spacer(),

              PrimaryButton(
                onTap: () {
                  NavigationHelper.navigateTo(context, const HomeScreen());
                },
                text: "GET STARTED",
              ),

              const SizedBox(
                height: kDefaultPadding * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}