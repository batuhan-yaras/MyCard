import 'package:flutter/material.dart';

class QrAlert extends StatelessWidget {
  const QrAlert(
      {super.key,
      required this.webPageName,
      required this.webIcon,
      required this.qrImage});
  final String webPageName;
  final IconData webIcon;
  final Image qrImage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 40,
      alignment: Alignment.center,
      content: qrImage,
      title: qrTitle(context),
    );
  }

  // Icon and Text for title
  Row qrTitle(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          webIcon,
          size: 50,
          color: Colors.white,
        ),
        const SizedBox(
          width: 13,
        ),
        Text(
          webPageName,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
