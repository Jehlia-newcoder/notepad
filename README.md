# Notepad Navigation Demo

This notepad app has five screens:

1. **Login**: Enter any name and password, then Sign In to open Notes. There is no real authentication.
2. **Notes**: Displays mock notes. Tapping a note opens its detail screen.
3. **Pinned Notes**: Displays mock pinned notes.
4. **Folders**: Displays sample folders and note counts.
5. **Note**: Displays the selected note's title, date, and contents.

The app does not save or edit notes. Logging out returns to Login.

## Where Navigation Happens

- `lib/screens/login_screen.dart`: Sign In uses `Navigator.pushReplacementNamed` to go from Login to Notes.
- `lib/main.dart` and `lib/navigation/app_routes.dart`: The named route table maps route names to their screen widgets.
- `lib/widgets/notepad_navigation_bar.dart`: Notes and Pinned use `pushReplacementNamed`; Folders uses `pushNamed`.
- `lib/widgets/note_list_screen.dart`: Tapping a note pushes `NoteDetailScreen`; Back returns to the note list.
- The app-bar Log out button removes the current routes and returns to Login.

Run `flutter build apk --debug` to create `build/app/outputs/flutter-apk/app-debug.apk`.

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
