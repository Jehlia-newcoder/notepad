// Shows the Pinned destination when Pinned is selected in the bottom bar.
// It supplies pinned sample notes to the shared note-list screen.
import 'package:flutter/material.dart';

import '../models/note.dart';
import 'note_list_screen.dart';

const _mockPinnedNotes = [
  Note(
    title: 'Assignments',
    body: 'answer lms.',
    pinned: true,
  ),
];

class PinnedScreen extends StatelessWidget {
  const PinnedScreen({super.key});

  @override
  Widget build(BuildContext context) => NoteListScreen(
    title: 'Pinned Notes',
    notes: _mockPinnedNotes,
    selectedTab: 1,
  );
}
