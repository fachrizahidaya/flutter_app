import 'package:flutter/material.dart';
import 'package:flutter_app/utils/config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social});
  final String social;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            side: const BorderSide(width: 1, color: Colors.black)),
        onPressed: () {},
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'assets/$social.png',
                width: 20,
                height: 20,
              ),
              Text(
                social.toUpperCase(),
                style: const TextStyle(color: Colors.black),
              )
            ],
          ),
        ));
  }
}
