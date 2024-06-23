import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text.rich(TextSpan(
                    text: '${TTexts.loginTitle} \n',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                    children: [
                      TextSpan(text: '${TTexts.loginSubTitle}'),
                      TextSpan(
                          text: '${TTexts.appName}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.black))
                    ])),
              ),
            ],
          ),
          Image(
              fit: BoxFit.cover,
              height: 115,
              image: AssetImage('assets/logos/ggg.png')),
        ],
      ),
    );
  }
}
