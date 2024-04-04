import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? titleWidget;
  final String? title;
  final Widget? actions;
  final Widget? leading;
  final Widget? leadingIcon;
  final Widget? bottom;
  final bool withoutTopPadding;
  final bool withoutLeadingPadding;
  final bool hasBorder;
  final bool centerTitle;
  final Color? color;

  final double height;
  final VoidCallback? onBackPressed;

  final EdgeInsets? padding;

  const DefaultAppBar({
    Key? key,
    this.titleWidget,
    this.leadingIcon,
    this.title,
    this.actions,
    this.leading,
    this.bottom,
    this.color,
    this.onBackPressed,
    this.withoutTopPadding = false,
    this.withoutLeadingPadding = false,
    this.centerTitle = false,
    this.padding,
    this.height = 56,
    this.hasBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        border: hasBorder
            ? const Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xFFDCDDDF),
                ),
              )
            : null,
      ),
      padding: padding ??
          EdgeInsets.only(
              top: (withoutTopPadding
                      ? 0
                      : MediaQuery.of(context).viewPadding.top) +
                  8,
              bottom: bottom != null ? 12 : 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (leading is! SizedBox)
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => context.router.pop(),
                    child: Padding(
                      padding: withoutLeadingPadding
                          ? EdgeInsets.zero
                          : const EdgeInsets.symmetric(vertical: 12).copyWith(
                              left: 16,
                              right: 10,
                            ),
                      child: leading ??
                          leadingIcon ??
                          SvgPicture.asset(
                            "assets/icons/back_icon.svg",
                          ),
                    ),
                  ),
                Expanded(
                  child: title != null
                      ? Text(
                        title ?? '',
                        textAlign: centerTitle ? TextAlign.center : null,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                      : titleWidget ?? const SizedBox(),
                ),
                if (actions is! SizedBox)
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 4),
                    child: actions ??
                        const SizedBox(
                          width: 44,
                        ),
                  )

                //Hero(tag: 'logo', child: action ?? Assets.images.logo.image()),
              ],
            ),
          ),
          if (bottom != null) bottom!,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height + (bottom == null ? 0 : 56));
}
