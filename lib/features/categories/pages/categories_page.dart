import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/locale_keys.g.dart';
import '/core/data/safety_models.dart';
import '/core/widgets/w_base_scaffold.dart';
import '../widgets/w_category_item.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  final String title;
  final List<Category> categories;

  const CategoriesPage({
    super.key,
    required this.categories,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: title,
      child: ListView(
        children: [
          ...List.generate(
            categories.length,
                (index) => WCategoryItem(category: categories[index]),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => _launchYouTubeVideo("https://www.youtube.com/watch?v=ComhcUocuO0&list=PLt2Iqc0StSXood2yp3PlDGzKfzzS_5CpP&pp=gAQBiAQB"),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 64,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x336A6D7C)),
                  borderRadius: BorderRadius.circular(11),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x1E393B3C),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/icons/first_aid.png",
                          width: 30,
                          height: 30,
                        ),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                LocaleKeys.first_aid.tr(),
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Color(0xFF171215),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/right_icon.svg",
                  ),
                ],
              ),
            ),
          ),
        ),
        ]
      ),
    );
  }

  Future<void> _launchYouTubeVideo(String videoURL) async {
    final uri = Uri.parse(videoURL);
    if (await launchUrl(uri)) {
      debugPrint('Launched Successfully');
    } else {
      throw 'Could not launch $videoURL';
    }
  }
}
