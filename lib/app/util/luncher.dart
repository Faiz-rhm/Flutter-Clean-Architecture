import 'package:url_launcher/url_launcher.dart' as url_launcher;

// launch call via url launcher
Future launch(Uri url) async {
  if (await url_launcher.canLaunchUrl(url)) {
    await url_launcher.launchUrl(url);
  } else {
    // throw 'Could not launch $url';
  }
}
