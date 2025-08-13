import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppInfo {
  static final _appIdString = dotenv.env['APP_ID'] ?? '0';
  static final int appId = int.tryParse(_appIdString) ?? 0;
  static final appSign = dotenv.env['APP_SIGN'] ?? '';
}