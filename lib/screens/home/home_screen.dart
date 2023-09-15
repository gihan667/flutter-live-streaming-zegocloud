import 'dart:math';

import 'package:flutter/material.dart';
import 'package:live_streaming_zego/components/primary_button.dart';
import 'package:live_streaming_zego/constants.dart';
import 'package:live_streaming_zego/helper/navigation_helper.dart';
import 'package:live_streaming_zego/screens/live/live_screen.dart';
import 'package:live_streaming_zego/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _userIdTextController = TextEditingController(text: localUserID);
  final TextEditingController _liveIdTextController = TextEditingController(text: Random().nextInt(10000).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kDefaultPadding * 2,
              ),

              const Center(
                child: Text(
                  "Start Your Live Stream",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: kDefaultPadding * 2,
              ),

              const Text(
                "User ID (This should be globally unique)",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 16.0,
                ),
              ),

              const SizedBox(
                height: kDefaultPadding / 3,
              ),

              TextFormField(
                controller: _userIdTextController,
                style: const TextStyle(
                  color: kWhiteColor,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: kAccentColor,
                ),
              ),

              const SizedBox(
                height: kDefaultPadding,
              ),

              const Text(
                "Live ID (Used to join & start new live streams)",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 16.0,
                ),
              ),

              const SizedBox(
                height: kDefaultPadding / 3,
              ),

              TextFormField(
                controller: _liveIdTextController,
                style: const TextStyle(
                  color: kWhiteColor,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: kAccentColor,
                ),
              ),

              const SizedBox(
                height: kDefaultPadding,
              ),

              PrimaryButton(
                onTap: () {
                  NavigationHelper.navigateTo(context, LiveScreen(
                    liveId: _liveIdTextController.text.toString(),
                    isHost: true,
                  ));
                },
                text: "Start Live Stream"
              ),

              const SizedBox(
                height: kDefaultPadding / 3,
              ),

              PrimaryButton(
                onTap: () {
                  NavigationHelper.navigateTo(context, LiveScreen(
                    liveId: _liveIdTextController.text.toString(),
                    isHost: false,
                  ));
                },
                text: "Join to a Live Stream"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Let's run it on a real device and see :)