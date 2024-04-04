import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../widgets/w_option.dart';
import '/core/widgets/w_base_scaffold.dart';
import '/generated/locale_keys.g.dart';

@RoutePage()
class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: LocaleKeys.change_lang.tr(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: List.generate(
                3,
                (index) => WOption(index: index),
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () async {
              final uri = Uri.parse(
                  "https://www.youtube.com/channel/UCknPbkkzliutzbFkiH3bVOQ");
              if (await launchUrl(uri)) {
                debugPrint('Launched Successfully');
              } else {
                throw 'Could not launch https://www.youtube.com/channel/UCknPbkkzliutzbFkiH3bVOQ';
              }
            },
            child: Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Color(0xFF9A9A9A),
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.youtube.image(width: 24, height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      LocaleKeys.youtube_channel.tr(),
                      style: const TextStyle(
                        color: Color(0xFF0152BC),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
