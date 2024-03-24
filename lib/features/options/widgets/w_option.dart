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
      padding: EdgeInsets.only(
          top: 40, left: isLeft ? 40 : 0, right: isLeft ? 0 : 40),
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
              Padding(
                padding: EdgeInsets.only(left: isLeft ? 24 : 12),
                child: Image.asset(
                  'assets/icons/${safety.icon}',
                  width: 100,
                  height: 100,
                ),
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
    //TECH
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
          title: LocaleKeys.fire_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.fire_safety_info.tr(),
                subtitle: LocaleKeys.fire_safety_info_text.tr(),
              ),
              Item(
                title: LocaleKeys.fire_safety_info1.tr(),
                subtitle: LocaleKeys.fire_safety_info1_text.tr(),
                texts: [
                  LocaleKeys.fire_safety_info1_texts.tr(),
                  LocaleKeys.fire_safety_info1_texts1.tr(),
                  LocaleKeys.fire_safety_info1_texts2.tr(),
                ],
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.fire_safety_advice.tr(),
                texts: [
                  LocaleKeys.fire_safety_advice_text.tr(),
                  LocaleKeys.fire_safety_advice_text1.tr(),
                  LocaleKeys.fire_safety_advice_text2.tr(),
                  LocaleKeys.fire_safety_advice_text3.tr(),
                  LocaleKeys.fire_safety_advice_text4.tr(),
                  LocaleKeys.fire_safety_advice_text5.tr(),
                  LocaleKeys.fire_safety_advice_text6.tr(),
                  LocaleKeys.fire_safety_advice_text7.tr(),
                  LocaleKeys.fire_safety_advice_text8.tr(),
                ],
              ),
              Item(
                title: LocaleKeys.fire_safety_advice1.tr(),
                texts: [
                  LocaleKeys.fire_safety_advice1_text.tr(),
                  LocaleKeys.fire_safety_advice1_text1.tr(),
                  LocaleKeys.fire_safety_advice1_text2.tr(),
                  LocaleKeys.fire_safety_advice1_text3.tr(),
                  LocaleKeys.fire_safety_advice1_text4.tr(),
                ],
              ),
              Item(
                title: LocaleKeys.fire_safety_advice2.tr(),
                texts: [
                  LocaleKeys.fire_safety_advice2_text.tr(),
                  LocaleKeys.fire_safety_advice2_text1.tr(),
                  LocaleKeys.fire_safety_advice2_text2.tr(),
                  LocaleKeys.fire_safety_advice2_text3.tr(),
                  LocaleKeys.fire_safety_advice2_text4.tr(),
                  LocaleKeys.fire_safety_advice2_text5.tr(),
                ],
              ),
            ],
            images: [
              'fire1.png',
              'fire2.png',
            ],
          ),
          icon: 'fire.png',
        ),
        Category(
          title: LocaleKeys.transport_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.transport_safety_info.tr(),
                subtitle: LocaleKeys.transport_safety_info_text.tr(),
              ),
              Item(
                title: LocaleKeys.transport_safety_info1.tr(),
                subtitle: LocaleKeys.transport_safety_info1_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.transport_safety_advice.tr(),
                texts: [
                  LocaleKeys.transport_safety_advice_text.tr(),
                  LocaleKeys.transport_safety_advice_text1.tr(),
                  LocaleKeys.transport_safety_advice_text2.tr(),
                  LocaleKeys.transport_safety_advice_text3.tr(),
                  LocaleKeys.transport_safety_advice_text4.tr(),
                ],
              ),
            ],
            images: [
              'transport1.png',
              'transport2.png',
            ],
          ),
          icon: 'transport.png',
        ),
      ],
      icon: 'technogenic.png',
    ),
    //NATURAL
    Safety(
      title: LocaleKeys.natural.tr(),
      categories: [
        Category(
          title: LocaleKeys.earthquake_safety_info.tr(),
          body: SafetyBody(infoItems: [
            Item(
              title: LocaleKeys.earthquake_safety_info.tr(),
              subtitle: LocaleKeys.earthquake_safety_info_text.tr(),
            ),
          ], adviceItems: [
            Item(
              title: LocaleKeys.earthquake_safety_advice.tr(),
              texts: [
                LocaleKeys.earthquake_safety_advice_text.tr(),
                LocaleKeys.earthquake_safety_advice_text1.tr(),
                LocaleKeys.earthquake_safety_advice_text2.tr(),
                LocaleKeys.earthquake_safety_advice_text3.tr(),
                LocaleKeys.earthquake_safety_advice_text4.tr(),
                LocaleKeys.earthquake_safety_advice_text5.tr(),
              ],
            ),
            Item(
              title: LocaleKeys.earthquake_safety_advice1.tr(),
              texts: [
                LocaleKeys.earthquake_safety_advice1_text.tr(),
                LocaleKeys.earthquake_safety_advice1_text1.tr(),
                LocaleKeys.earthquake_safety_advice1_text2.tr(),
                LocaleKeys.earthquake_safety_advice1_text3.tr(),
                LocaleKeys.earthquake_safety_advice1_text4.tr(),
                LocaleKeys.earthquake_safety_advice1_text5.tr(),
              ],
            ),
          ], images: [
            'earthquake1.png',
            'earthquake2.png',
          ]),
          icon: 'earthquake.png',
        ),
        Category(
          title: LocaleKeys.flood_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.flood_safety_info.tr(),
                subtitle: LocaleKeys.flood_safety_info_text.tr(),
              ),
              Item(
                title: LocaleKeys.flood_safety_info1.tr(),
                subtitle: LocaleKeys.flood_safety_info1_text.tr(),
              ),
              Item(
                title: LocaleKeys.flood_safety_info2.tr(),
                subtitle: LocaleKeys.flood_safety_info2_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.flood_safety_advice.tr(),
                texts: [
                  LocaleKeys.flood_safety_advice_text.tr(),
                  LocaleKeys.flood_safety_advice_text1.tr(),
                  LocaleKeys.flood_safety_advice_text2.tr(),
                  LocaleKeys.flood_safety_advice_text3.tr(),
                ],
              ),
              Item(
                title: LocaleKeys.flood_safety_advice1.tr(),
                texts: [
                  LocaleKeys.flood_safety_advice1_text.tr(),
                  LocaleKeys.flood_safety_advice1_text1.tr(),
                  LocaleKeys.flood_safety_advice1_text2.tr(),
                  LocaleKeys.flood_safety_advice1_text3.tr(),
                ],
              ),
              Item(
                title: LocaleKeys.flood_safety_advice2.tr(),
                texts: [
                  LocaleKeys.flood_safety_advice2_text.tr(),
                  LocaleKeys.flood_safety_advice2_text1.tr(),
                  LocaleKeys.flood_safety_advice2_text2.tr(),
                  LocaleKeys.flood_safety_advice2_text3.tr(),
                ],
              ),
            ],
            images: [
              "water1.png",
            ],
          ),
          icon: 'water.png',
        ),
        Category(
          title: LocaleKeys.avalanche_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.avalanche_safety_info.tr(),
                subtitle: LocaleKeys.avalanche_safety_info_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.avalanche_safety_advice.tr(),
                texts: [
                  LocaleKeys.avalanche_safety_advice_text.tr(),
                  LocaleKeys.avalanche_safety_advice_text1.tr(),
                  LocaleKeys.avalanche_safety_advice_text2.tr(),
                  LocaleKeys.avalanche_safety_advice_text3.tr(),
                  LocaleKeys.avalanche_safety_advice_text4.tr(),
                  LocaleKeys.avalanche_safety_advice_text5.tr(),
                  LocaleKeys.avalanche_safety_advice_text6.tr(),
                ],
              ),
            ],
            images: [
              "snow1.png",
              "snow2.png",
            ],
          ),
          icon: 'snow.png',
        ),
        Category(
          title: LocaleKeys.landslide_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.landslide_safety_info.tr(),
                subtitle: LocaleKeys.landslide_safety_info_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.landslide_safety_advice.tr(),
                texts: [
                  LocaleKeys.landslide_safety_advice_text.tr(),
                  LocaleKeys.landslide_safety_advice_text1.tr(),
                  LocaleKeys.landslide_safety_advice_text2.tr(),
                  LocaleKeys.landslide_safety_advice_text3.tr(),
                  LocaleKeys.landslide_safety_advice_text4.tr(),
                  LocaleKeys.landslide_safety_advice_text5.tr(),
                  LocaleKeys.landslide_safety_advice_text6.tr(),
                ],
              ),
            ],
          ),
          icon: 'earth.png',
        ),
      ],
      icon: 'natural.png',
    ),
    //ECOLOGIC
    Safety(
      title: LocaleKeys.ecological.tr(),
      categories: [
        Category(
          title: LocaleKeys.ecological_safety_info.tr(),
          body: SafetyBody(
            infoItems: [
              Item(
                title: LocaleKeys.ecological_safety_info.tr(),
                subtitle: LocaleKeys.ecological_safety_info_text.tr(),
              ),
            ],
            adviceItems: [
              Item(
                title: LocaleKeys.ecological_safety_advice.tr(),
                texts: [
                  LocaleKeys.ecological_safety_advice_text.tr(),
                  LocaleKeys.ecological_safety_advice_text1.tr(),
                  LocaleKeys.ecological_safety_advice_text2.tr(),
                  LocaleKeys.ecological_safety_advice_text3.tr(),
                  LocaleKeys.ecological_safety_advice_text4.tr(),
                  LocaleKeys.ecological_safety_advice_text5.tr(),
                  LocaleKeys.ecological_safety_advice_text6.tr(),
                ],
              ),
            ],
            images: ['ecologic1.png'],
          ),
          icon: 'ecologic_icon.png',
        ),
      ],
      icon: 'ecologic.png',
    )
  ];
}
