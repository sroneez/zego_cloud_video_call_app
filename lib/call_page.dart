import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key, required this.callId});

  final String callId;

  @override
  State<CallPage> createState() => _CallPageState();
}

final String userID = Random().nextInt(10000000).toString();

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 691897622,
      appSign:
          '5f1a093fe041fcbcfd4cf26285ea56f66ffbe1ee940000cef2fdc2cacbb8fdec',
      callID: widget.callId,
      userID: userID,
      userName: "User $userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
