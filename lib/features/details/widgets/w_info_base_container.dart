import 'package:flutter/material.dart';

class WInfoBaseContainer extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final List<String>? texts;

  const WInfoBaseContainer({super.key, this.title, this.subtitle, this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title ?? '',
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              subtitle ?? '',
              style: const TextStyle(
                color: Color(0xFF696868),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (texts != null || texts != []) ...{
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: texts
                      ?.map(
                        (text) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4)
                              .copyWith(left: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                width: 8,
                                height: 8,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF434343),
                                  shape: OvalBorder(),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  text,
                                  style: const TextStyle(
                                    color: Color(0xFF434343),
                                    fontSize: 12,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            )
          }
        ],
      ),
    );
  }
}
