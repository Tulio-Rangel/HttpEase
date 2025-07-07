import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget sidebar;
  final Widget content;
  final Widget? rigthPanel;

  const BaseLayout({
    super.key,
    required this.sidebar,
    required this.content,
    this.rigthPanel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 260, child: sidebar),
        Expanded(child: content),
        if (rigthPanel != null) SizedBox(width: 300, child: rigthPanel!),
      ],
    );
  }
}
