// Shows the Notes destination after sign-in or when Notes is selected below.
// It supplies the sample notes to the shared note-list screen.
import 'package:flutter/material.dart';

import '../models/note.dart';
import 'note_list_screen.dart';

const _mockNotes = [
  Note(
    title: 'Class notes',
    body: 'Review the chapter on ecosystems before Friday.',
  ),
  Note(title: 'Shopping', body: 'milo, nescafe, kopiko, and milk.'),
];

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      NoteListScreen(title: 'Notes', notes: _mockNotes, selectedTab: 0);
}
