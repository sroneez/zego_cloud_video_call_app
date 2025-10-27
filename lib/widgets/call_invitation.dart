import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class CallInvitationScreen extends StatelessWidget {
  const CallInvitationScreen({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 691897622,
      appSign:
          '5f1a093fe041fcbcfd4cf26285ea56f66ffbe1ee940000cef2fdc2cacbb8fdec',
      userID: userName,
      userName: userName,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      plugins: [ZegoUIKitSignalingPlugin()],
      callID: userName,
    );
  }
}
