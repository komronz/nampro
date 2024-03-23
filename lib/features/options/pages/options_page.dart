import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
      child: ListView(
        children: List.generate(
          1,
          (index) => WOption(index: index),
        ),
      ),
    );
  }
}
