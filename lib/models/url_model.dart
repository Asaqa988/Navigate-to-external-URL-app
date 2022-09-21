import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URl extends StatelessWidget {
  URl(
      {required this.myplatformIcon,
      required this.myplatformSubTitle,
      required this.myplatformTitle,
      required this.onTapping});

  String? myplatformTitle;
  String? myplatformSubTitle;
  IconData? myplatformIcon;
  Function()? onTapping ; 

  final Uri _url = Uri.parse('https://facebook.com/');
  final Uri _url2 = Uri.parse('https://www.instagram.com/accounts/login/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapping,
      child: Container(
          child: ListTile(
        leading: Icon(myplatformIcon),
        title: Text("$myplatformTitle"),
        subtitle: Text("$myplatformSubTitle"),
      )),
    );
  }
}
