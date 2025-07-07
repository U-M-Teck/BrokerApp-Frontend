import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static String? otp;
  static String? resetCode;
  static String? email;
  static String? phoneNumber;
  static String? token;
  static int? userId;
  static String? userName;
  static bool? isWhatsappAvailable;
  static String? whatsAppNumber;
  static int? seekerId;
  static int? brokerId;
  static int? userPoints;
  static int? ownerId;
  static String version = "";

  static Future<void> loadVersion() async {
    try {
      final info = await PackageInfo.fromPlatform();
      version = info.version;
    } catch (e) {
      version = "unknown";
    }
  }
}
