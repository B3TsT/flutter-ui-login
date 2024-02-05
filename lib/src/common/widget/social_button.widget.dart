import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    required this.iconPath,
    required this.label,
    this.width = 400,
    required this.onPressed,
  });
  final String iconPath;
  final String label;
  final double width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: width,
      // height: 50,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(
            Pallete.whiteColor,
            BlendMode.srcIn,
          ),
          width: 25,
        ),
        label: Text(
          label,
          style: textTheme.labelLarge?.copyWith(
            fontSize: 17,
          ),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            // horizontal: 100,
          ),
        ),
      ),
    );
  }
}
