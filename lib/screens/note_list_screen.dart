// Builds the note list shown on the Notes and Pinned tabs after sign-in.
// Tap a note in that list to open its detail screen.
import 'package:flutter/material.dart';

import '../models/note.dart';
import '../widgets/notepad_app_bar.dart';
import '../widgets/notepad_navigation_bar.dart';
import 'note_detail_screen.dart';

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({
    required this.title,
    required this.notes,
    required this.selectedTab,
    super.key,
  });

  final String title;
  final List<Note> notes;
  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: notepadAppBar(context, title: title),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notes.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final note = notes[index];
          return ListTile(
            leading: Icon(note.pinned ? Icons.push_pin : Icons.note),
            title: Text(note.title),
            subtitle: Text(note.body),
            trailing: Text(note.updatedAt),
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => NoteDetailScreen(note: note),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: NotepadNavigationBar(selectedTab: selectedTab),
    );
  }
}
