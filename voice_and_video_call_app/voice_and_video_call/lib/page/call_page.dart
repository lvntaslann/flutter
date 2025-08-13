import 'dart:math';
import 'package:voice_and_video_call/constants/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:flutter/material.dart';

final userId = Random().nextInt(9999);
class CallPage extends StatelessWidget {
  final String callId;
  const CallPage({Key? key, required this.callId}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo.appId,
      appSign: AppInfo.appSign,
      userID: userId.toString(),
      userName: 'rUsername $userId',
      callID: callId,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}