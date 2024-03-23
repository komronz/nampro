import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/w_lang_button.dart';
import '/core/data/data.dart';
import '/gen/assets.gen.dart';

@RoutePage()
class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 80),
            child: Assets.icons.langsIcon.image(width: 344, height: 344),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    top: 32,
                  ),
                  child: Column(
                    children: languages
                        .map(
                          (language) => WLangButton(
                            language,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
