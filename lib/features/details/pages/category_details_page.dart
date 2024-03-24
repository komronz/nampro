import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/w_advice_base_container.dart';
import '../widgets/w_info_base_container.dart';
import '/core/data/safety_models.dart';
import '/core/widgets/w_base_scaffold.dart';

@RoutePage()
class CategoryDetailsPage extends StatelessWidget {
  final String title;
  final SafetyBody safetyBody;

  const CategoryDetailsPage({
    super.key,
    required this.title,
    required this.safetyBody,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: title,
      child: ListView(
        children: [
          ...List.generate(
            safetyBody.infoItems?.length ?? 0,
            (index) => WInfoBaseContainer(
              title: safetyBody.infoItems?[index].title,
              subtitle: safetyBody.infoItems?[index].subtitle,
              texts: safetyBody.infoItems?[index].texts,
            ),
          ),
          ...List.generate(
            safetyBody.adviceItems?.length ?? 0,
            (index) => WAdviceBaseContainer(
              title: safetyBody.adviceItems?[index].title,
              texts: safetyBody.adviceItems?[index].texts,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                safetyBody.images?.length ?? 0,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    "assets/images/${safetyBody.images?[index]}",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
