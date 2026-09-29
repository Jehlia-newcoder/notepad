class Note {
  const Note({
    required this.title,
    required this.body,
    this.updatedAt = 'Today',
    this.pinned = false,
  });

  final String title;
  final String body;
  final String updatedAt;
  final bool pinned;
}
