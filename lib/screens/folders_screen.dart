// Shows the Folders destination selected from the bottom navigation bar.
// The current UI is a plain list of folders; it has no nested tabs or folder pages.
import 'package:flutter/material.dart';

import '../widgets/notepad_app_bar.dart';
import '../widgets/notepad_navigation_bar.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: notepadAppBar(context, title: 'Folders'),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text('Personal'),
            trailing: Text('8 notes'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text('School'),
            trailing: Text('4 notes'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text('Shopping'),
            trailing: Text('2 notes'),
          ),
        ],
      ),
      bottomNavigationBar: const NotepadNavigationBar(selectedTab: 2),
    );
  }
}
