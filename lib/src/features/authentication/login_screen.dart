import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/common.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/signin_balls.png',
                  scale: 1.5,
                ),
                Text(
                  'Sign in.',
                  style: textTheme.displayLarge,
                ),
                const Gap(50),
                SocialButtonWidget(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Continue with Google',
                  onPressed: () {},
                ),
                const Gap(20),
                SocialButtonWidget(
                  iconPath: 'assets/svgs/f_logo.svg',
                  label: 'Continue with Facebook',
                  onPressed: () {},
                ),
                const Gap(15),
                Text(
                  'Or',
                  style: textTheme.titleSmall?.copyWith(
                    fontSize: 17,
                  ),
                ),
                const Gap(15),
                const LoginFieldWidget(hintText: 'Email'),
                const Gap(15),
                const LoginFieldWidget(hintText: 'Password'),
                const Gap(20),
                const GradientButtonWidget(),
                const Gap(50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
