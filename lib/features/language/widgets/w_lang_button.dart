import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/config/routes/app_router.gr.dart';
import '/gen/assets.gen.dart';

class WLangButton extends StatelessWidget {
  final Locale locale;

  const WLangButton(this.locale, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        if (context.locale != locale) {
          await context.setLocale(locale);
        }
        if (context.mounted) {
          context.router.push(const OptionsRoute());
        }
      },
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A0F361E),
              blurRadius: 10,
              offset: Offset(0, 4),
              spreadRadius: 0.1,
            )
          ],
          border: Border.all(
            color: context.locale == locale
                ? const Color(0xFF37BD6B)
                : const Color(0x266A6D7C),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              getIcon(locale),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  locale.countryCode ?? '',
                  style: context.locale == locale
                      ? const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                        )
                      : const TextStyle(
                          color: Color(0xFF6A6D7D),
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                        ),
                ),
              ),
              const Spacer(),
              if (context.locale == locale) ...[
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  width: 1.50,
                  height: 28,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFAFB0B4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xFF37BD6B),
                  size: 24,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  getIcon(Locale locale) {
    switch (locale.languageCode) {
      case 'ru':
        return Assets.icons.ruIcon.image(width: 30, height: 30);
      case 'en':
        return Assets.icons.enIcon.image(width: 30, height: 30);
      case 'uz':
        return Assets.icons.uzIcon.image(width: 30, height: 30);
    }
  }
}
