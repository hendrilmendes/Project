import 'package:flutter/material.dart';

class SearchBarCustom extends StatelessWidget {
  final Function(String) onSearch;
  
  const SearchBarCustom({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Expanded(
              child: TextField(
                onChanged: onSearch,
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  border: InputBorder.none,
                  contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
