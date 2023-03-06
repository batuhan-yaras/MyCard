import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key, required this.avatarRadius});
  final double avatarRadius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: avatarRadius,
      backgroundImage: const AssetImage('images/batuhan.jpg'),
    );
  }
}
