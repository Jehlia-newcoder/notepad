import 'package:flutter_test/flutter_test.dart';
import 'package:fish_shop_nav/main.dart';

void main() {
  testWidgets('login, note detail, tabs, and logout navigate', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FishShopApp());

    expect(find.text('Notepad Login'), findsOneWidget);
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);

    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle();
    expect(find.text('Notes'), findsWidgets);
    expect(find.text('Class notes'), findsOneWidget);

    await tester.tap(find.text('Class notes'));
    await tester.pumpAndSettle();
    expect(
      find.text('Review the chapter on ecosystems before Friday.'),
      findsOneWidget,
    );
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Pinned'));
    await tester.pumpAndSettle();
    expect(find.text('Pinned Notes'), findsOneWidget);
    expect(find.text('Assignments'), findsOneWidget);

    await tester.tap(find.text('Folders'));
    await tester.pumpAndSettle();
    expect(find.text('Folders'), findsWidgets);
    expect(find.text('Personal'), findsOneWidget);

    await tester.tap(find.byTooltip('Log out'));
    await tester.pumpAndSettle();
    expect(find.text('Notepad Login'), findsOneWidget);
  });
}
