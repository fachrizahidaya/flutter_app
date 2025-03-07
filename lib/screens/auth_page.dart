import 'package:flutter/material.dart';
import 'package:flutter_app/components/login_form.dart';
import 'package:flutter_app/components/social_button.dart';
import 'package:flutter_app/utils/config.dart';
import 'package:flutter_app/utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppText.enText['welcome_text']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            Text(
              AppText.enText['signIn_text']!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            const LoginForm(),
            Config.spaceSmall,
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppText.enText['forgot-password']!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ),
            const Spacer(),
            Center(
              child: Text(
                AppText.enText['social-login']!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ),
            Config.spaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialButton(social: 'google'),
                SocialButton(social: 'facebook'),
              ],
            ),
            Config.spaceSmall,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(AppText.enText['signUp_text']!, style: TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.normal,
                //   color: Colors.grey.shade500,
                // ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
