import 'package:flutter/material.dart';
import 'package:http_ease/features/workspace/presentation/side_nav_drawer.dart';
import 'package:http_ease/presentation/widgets/base_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        sidebar: const SideNavDrawer(),
        content: // TODO: const RequestEditor(),
        // TODO: rigthPanel: const ResponseViewer(),
      ),
    );
  }
}
