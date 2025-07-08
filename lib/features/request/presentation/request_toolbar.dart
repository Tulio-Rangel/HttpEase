import 'package:flutter/material.dart';

class RequestToolbar extends StatefulWidget {
  const RequestToolbar({super.key});

  @override
  State<RequestToolbar> createState() => _RequestToolbarState();
}

class _RequestToolbarState extends State<RequestToolbar> {
  final _urlController = TextEditingController();
  String _selectedMethod = 'GET';

  final methods = ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'HEAD', 'OPTIONS'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          DropdownButton<String>(
            value: _selectedMethod,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedMethod = value;
                });
              }
            },
            items: methods
                .map(
                  (method) =>
                      DropdownMenuItem(value: method, child: Text(method)),
                )
                .toList(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'https://api.ejemplo.com/endpoint',
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton.icon(
            onPressed: () {
              // TODO: Implementar la lógica para enviar la solicitud
            },
            label: const Text('Enviar'),
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
