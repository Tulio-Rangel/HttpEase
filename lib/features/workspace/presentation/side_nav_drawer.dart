import 'package:flutter/material.dart';
import 'package:http_ease/features/workspace/presentation/mock_data.dart';

class SideNavDrawer extends StatelessWidget {
  const SideNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _builWorkspaceHeader(context),
          const SizedBox(height: 16),
          const Divider(),
          Expanded(child: _buildCollectionList()),
          const Divider(),
          _buildAddCollectionButton(),
        ],
      ),
    );
  }

  Widget _builWorkspaceHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            mockWorkspace,
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Icon(Icons.keyboard_arrow_down),
      ],
    );
  }

  Widget _buildCollectionList() {
    return ListView.builder(
      itemCount: mockCollections.length,
      itemBuilder: (context, index) {
        final collection = mockCollections[index];
        return ExpansionTile(
          title: Text(collection['name'] as String),
          children: (collection['requests'] as List<String>).map((req) {
            return ListTile(
              dense: true,
              contentPadding: const EdgeInsets.only(left: 24),
              title: Text(req, style: const TextStyle(fontSize: 14)),
              onTap: () {
                // TODO: Navigate to request
              },
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildAddCollectionButton() {
    return TextButton.icon(
      onPressed: // TODO: Implement add collection logic
      () {
        // Show dialog or navigate to add collection page
      },
      label: const Text('Nueva Colección'),
      icon: const Icon(Icons.add),
    );
  }
}
