import 'package:flutter/material.dart';
import '/gen/assets.gen.dart';

class WAdviceBaseContainer extends StatelessWidget {
  final String? title;
  final List<String>? texts;

  const WAdviceBaseContainer({Key? key, this.title, this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(12).copyWith(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Assets.icons.adviceIcon.image(width: 20, height: 20),
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      title ?? '',
                      style: const TextStyle(
                        color: Color(0xFF6E8A00),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 0.15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (texts != null && texts!.isNotEmpty)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: texts!
                  .map(
                    (text) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4)
                          .copyWith(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            width: 8,
                            height: 8,
                            decoration: const ShapeDecoration(
                              color: Colors.black,
                              shape: CircleBorder(),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              text,
                              style: const TextStyle(
                                color: Color(0xFF696868),
                                fontSize: 12,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }
}
