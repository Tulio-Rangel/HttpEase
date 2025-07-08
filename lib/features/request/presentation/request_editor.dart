import 'package:flutter/material.dart';
import 'package:http_ease/features/request/presentation/request_tabs.dart';
import 'package:http_ease/features/request/presentation/request_toolbar.dart';

class RequestEditor extends StatelessWidget {
  const RequestEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RequestToolbar(),
        Divider(height: 1),
        Expanded(child: RequestTabs()),
      ],
    );
  }
}
