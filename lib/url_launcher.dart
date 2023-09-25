import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';


class UrlLauncher{
  static String id = 'url_launcher';

  Future<void> urllauncher(url)async {
    String url = 'https://esanjeevani.mohfw.gov.in/#/patient/signin';
    final Uri uri = Uri.parse('https://esanjeevani.mohfw.gov.in/#/patient/signin');
    // final Uri uri = Uri(scheme: "https",host: url);
    if(!await launchUrl(uri,mode: LaunchMode.inAppWebView)){
      throw "Can't launch url";
    }
  }

}


