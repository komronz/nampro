import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'default_app_bar.dart';

class BaseScaffold extends StatelessWidget {
  final String? title;
  final Widget child;
  final Widget? action;
  final Widget? leadingIcon;
  final Widget? bottomsheet;
  final bool? resizeToAvoidBottomInset;
  final bool disableTopPadding;
  final VoidCallback? onBackPressed;
  final Color? color;
  final bool centerTitle;
  final Color? appBarColor;
  final PreferredSizeWidget? appBar;

  const BaseScaffold({
    Key? key,
    this.appBar,
    this.title,
    this.centerTitle = false,
    required this.child,
    this.leadingIcon,
    this.bottomsheet,
    this.color,
    this.appBarColor,
    this.resizeToAvoidBottomInset,
    this.disableTopPadding = false,
    this.onBackPressed,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ??
          DefaultAppBar(
            color: appBarColor,
            leadingIcon: leadingIcon,
            onBackPressed: onBackPressed,
            titleWidget: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title?.tr() ?? '',
                textAlign: centerTitle ? TextAlign.center : null,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            actions: action,
          ),
      body: Column(
        children: [
          Expanded(
            child: child,
          ),
        ],
      ),
      bottomSheet: bottomsheet,
    );
  }
}
