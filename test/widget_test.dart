import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bco_app/main.dart';
import 'package:bco_app/providers/app_state.dart';

void main() {
  testWidgets('App launches and shows home screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppState(),
        child: const BcoApp(),
      ),
    );

    expect(find.text('Book of\nChurch Order'), findsOneWidget);
  });
}
