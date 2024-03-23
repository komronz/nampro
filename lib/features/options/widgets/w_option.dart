import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/config/routes/app_router.gr.dart';
import '/generated/locale_keys.g.dart';
import '/core/data/safety_models.dart';

class WOption extends StatelessWidget {
  final int index;

  WOption({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final Safety safety = safeties[index];
    final isLeft = index % 2 != 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40)
          .copyWith(left: isLeft ? 40 : 0, right: isLeft ? 0 : 40),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => context.router.push(
          CategoriesRoute(
            categories: safety.categories,
            title: safety.title,
          ),
        ),
        child: Container(
          height: 172,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: isLeft
                  ? const BorderSide(width: 1, color: Colors.black)
                  : const BorderSide(),
              right: !isLeft
                  ? const BorderSide(width: 1, color: Colors.black)
                  : const BorderSide(),
              bottom: const BorderSide(width: 1, color: Colors.black),
              top: const BorderSide(width: 1, color: Colors.black),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft:
                  isLeft ? const Radius.circular(12) : const Radius.circular(0),
              topLeft:
                  isLeft ? const Radius.circular(12) : const Radius.circular(0),
              topRight: !isLeft
                  ? const Radius.circular(12)
                  : const Radius.circular(0),
              bottomRight: !isLeft
                  ? const Radius.circular(12)
                  : const Radius.circular(0),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/${safety.icon}',
                width: 100,
                height: 100,
              ),
               Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      safety.title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Color(0xFF393B3C),
                        fontSize: 30,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///DATA --

  final List<Safety> safeties = [
    //a
    Safety(
      title: LocaleKeys.technogenic.tr(),
      categories: [
        Category(
          title: LocaleKeys.electric_safety_info.tr(),
          body: SafetyBody(
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
          ),
          icon: 'electric.png',
        ),
        Category(
          title: LocaleKeys.electric_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.electric_safety_info.tr(),
                subtitle: LocaleKeys.electric_safety_info_text.tr(),
              ),
              Item(
                title: LocaleKeys.electric_safety_info.tr(),
                subtitle: LocaleKeys.electric_safety_info_text.tr(),
                texts: [
                  "1",
                  "2",
                ],
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.electric_safety_advice.tr(),
                texts: [
                  LocaleKeys.electric_safety_advice_text.tr(),
                  LocaleKeys.electric_safety_advice_text1.tr(),
                  LocaleKeys.electric_safety_advice_text2.tr(),
                  LocaleKeys.electric_safety_advice_text3.tr(),
                  LocaleKeys.electric_safety_advice_text4.tr(),
                  LocaleKeys.electric_safety_advice_text5.tr(),
                ],
              ),
            ],
            images: [
              "fire1.png",
              "fire2.png"
            ],
          ),
          icon: 'fire.png',
        ),


      ],
      icon: 'technogenic.png',
    ),
  ];
}
