import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_streaming_zego/constants.dart';
import 'package:live_streaming_zego/screens/welcome/welcome_screen.dart';
import 'package:live_streaming_zego/size_config.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

// Let's enable Zego Cloud UIKit Logs
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ZegoUIKit().initLog().then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);

        return MaterialApp(
          title: 'Live Streaming - Zego Cloud',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: primarySwatch,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            scaffoldBackgroundColor: kScaffoldBgColor,
          ),
          home: const WelcomeScreen(),
        );
      }
    );
  }
}
