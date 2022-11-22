import 'package:url_launcher/url_launcher.dart';

void openExternalLink(Map<String, String> uriParameters) async {
  final Uri uri = Uri(
      scheme: uriParameters["scheme"],
      host: uriParameters["host"],
      path: uriParameters["path"]);

  if (await canLaunchUrl(uri)) {
    launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
