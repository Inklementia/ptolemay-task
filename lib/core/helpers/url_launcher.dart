// Package imports:
import 'package:testtask/config/api/api_urls.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class MyUrlLauncher {
  //
  static Future<bool> open(String link) async {
    final uri = Uri.parse(link);
    final isValid = await canLaunchUrl(uri);
    if (isValid) await launchUrl(uri, mode: LaunchMode.externalApplication);
    return isValid;
  }

  static Future<bool> browse(String url) {
    return open('${ApiUrls.https}$url');
  }
}
