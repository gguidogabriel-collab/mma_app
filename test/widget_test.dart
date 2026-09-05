import 'package:flutter_test/flutter_test.dart';
import 'package:mma_app/main.dart';

void main() {
  testWidgets('La aplicación MMA Fighter inicia correctamente', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MMAApp());

    expect(find.text('MMA FIGHTER'), findsOneWidget);
  });
}