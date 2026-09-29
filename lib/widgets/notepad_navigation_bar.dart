import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class NotepadNavigationBar extends StatelessWidget {
  const NotepadNavigationBar({required this.selectedTab, super.key});

  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedTab,
      onDestinationSelected: (index) {
        if (index == selectedTab) return;

        if (index == 2) {
          // Push Folders on top; Back returns to the current Notes/Pinned page.
          Navigator.pushNamed(context, AppRoutes.folders);
          return;
        }

        // Replace the current tab with Notes or Pinned.
        final route = index == 0 ? AppRoutes.notes : AppRoutes.pinned;
        Navigator.pushReplacementNamed(context, route);
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.notes_outlined),
          selectedIcon: Icon(Icons.notes),
          label: 'Notes',
        ),
        NavigationDestination(
          icon: Icon(Icons.push_pin_outlined),
          selectedIcon: Icon(Icons.push_pin),
          label: 'Pinned',
        ),
        NavigationDestination(
          icon: Icon(Icons.folder_outlined),
          label: 'Folders',
        ),
      ],
    );
  }
}
