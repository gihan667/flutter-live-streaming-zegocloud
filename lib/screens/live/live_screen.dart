import 'package:flutter/material.dart';
import 'package:live_streaming_zego/components/user_avatar.dart';
import 'package:live_streaming_zego/constants.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key, required this.liveId, required this.isHost}) : super(key: key);

  final String liveId;
  final bool isHost; // to determine user join as Host or Viewer

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    final _liveController = ZegoUIKitPrebuiltLiveStreamingController();

    // We used Zego Cloud pre build Live Streaming UI Kit to implement simple live stream within few line of code
    // blocks
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: appId,
        appSign: appSign, // For advanced authentication use token implementation (https://docs.zegocloud.com/faq/token_upgrade?product=all&platform=all)
        userID: localUserID,
        userName: 'user_$localUserID',
        liveID: widget.liveId,
        controller: _liveController,
        config: (widget.isHost ? ZegoUIKitPrebuiltLiveStreamingConfig.host() : ZegoUIKitPrebuiltLiveStreamingConfig.audience())
          ..avatarBuilder = userAvatar,
      ),
    );
  }
}