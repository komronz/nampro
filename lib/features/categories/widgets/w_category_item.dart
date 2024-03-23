import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nampro/config/routes/app_router.gr.dart';

import '/core/data/safety_models.dart';

class WCategoryItem extends StatelessWidget {
  final Category category;

  const WCategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => context.router.push(CategoryDetailsRoute(
          title: category.title,
          safetyBody: category.body,
        )),
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
                      "assets/icons/${category.icon}",
                      width: 30,
                      height: 30,
                    ),
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            category.title,
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
    );
  }
}
