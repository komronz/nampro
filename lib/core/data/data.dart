import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../generated/locale_keys.g.dart';
import 'safety.dart';

class Data {
  static final List<Safety> safeties = [
    //a
    Safety(
      title: LocaleKeys.technogenic.tr(),
      categories: [
        Category(
          title: LocaleKeys.electric_safety_info.tr(),
          bodies: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.electric_safety_info.tr(),
                subtitle: LocaleKeys.electric_safety_info_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.electric_safety_advice.tr(),
                texts: [
                  LocaleKeys.electric_safety_advice_text.tr(),
                  LocaleKeys.electric_safety_advice_text2.tr(),
                  LocaleKeys.electric_safety_advice_text3.tr(),
                  LocaleKeys.electric_safety_advice_text4.tr(),
                  LocaleKeys.electric_safety_advice_text5.tr(),
                ],
              ),
            ],
            images: [
              'electric1.jpg',
              'electric2.jpg',
            ],
          ),
          icon: 'electric.png',
        ),
      ],
      icon: 'technogenic.png',
    ),
  ];


  static final languages = [
    const Locale('uz', 'O\'zbek'),
    const Locale('en', 'English'),
    const Locale('ru', 'Русский'),
  ];
}
