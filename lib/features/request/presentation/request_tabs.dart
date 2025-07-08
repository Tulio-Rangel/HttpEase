import 'package:flutter/material.dart';

class RequestTabs extends StatelessWidget {
  const RequestTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: const [
          TabBar(
            tabs: [
              Tab(text: 'Headers'),
              Tab(text: 'Body'),
              Tab(text: 'Auth'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Headers UI aquí')),
                Center(child: Text('Body UI aquí')),
                Center(child: Text('Auth UI aquí')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
