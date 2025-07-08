import 'package:flutter/material.dart';

class ResponseViewer extends StatelessWidget {
  const ResponseViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildInfoBar(context),
        const Divider(height: 1),
        Expanded(child: _buildResponseTabs()),
      ],
    );
  }

  Widget _buildInfoBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      child: Row(
        children: const [
          Icon(Icons.check_circle, color: Colors.green, size: 18),
          SizedBox(width: 8),
          Text('200 OK', style: TextStyle(fontWeight: FontWeight.bold)),
          Spacer(),
          Text('⏱ 148 ms'),
          SizedBox(width: 16),
          Text('📦 2.1 KB'),
        ],
      ),
    );
  }

  static Widget _buildResponseTabs() {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: const [
          TabBar(
            tabs: [
              Tab(text: 'Cuerpo'),
              Tab(text: 'Encabezados'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [_MockJsonBodyViewer(), _MockHeaderViewer()],
            ),
          ),
        ],
      ),
    );
  }
}

class _MockJsonBodyViewer extends StatelessWidget {
  const _MockJsonBodyViewer();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: SelectableText('''{
        "id": 123,
        "nombre": "Producto A",
        "disponible": true,
}''', style: const TextStyle(fontFamily: 'monospace')),
    );
  }
}

class _MockHeaderViewer extends StatelessWidget {
  const _MockHeaderViewer();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        _KeyValueRow(keyText: 'content-type', valueText: 'application/json'),
        _KeyValueRow(keyText: 'content-length', valueText: '102'),
      ],
    );
  }
}

class _KeyValueRow extends StatelessWidget {
  final String keyText;
  final String valueText;

  const _KeyValueRow({required this.keyText, required this.valueText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            keyText,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(child: Text(valueText)),
      ],
    );
  }
}
