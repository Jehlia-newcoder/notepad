// Shows one note's title, date, and text after you tap it in Notes or Pinned.
// This screen is visible until you press Back.
import 'package:flutter/material.dart';

import '../models/note.dart';
import '../widgets/notepad_app_bar.dart';

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({required this.note, super.key});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: notepadAppBar(context, title: 'Note'),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(note.updatedAt),
            const Divider(height: 32),
            Text(note.body, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
