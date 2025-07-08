import 'package:flutter/material.dart';
import 'package:http_ease/features/request/presentation/request_editor.dart';
import 'package:http_ease/features/request/presentation/response_viewer.dart';
import 'package:http_ease/features/workspace/presentation/side_nav_drawer.dart';
import 'package:http_ease/presentation/widgets/base_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        sidebar: const SideNavDrawer(),
        content: const RequestEditor(),
        rigthPanel: const ResponseViewer(),
      ),
    );
  }
}
