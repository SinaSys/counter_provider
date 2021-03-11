import 'package:counter_provider/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () {
    CounterModel obj = CounterModel();
    obj.increment();
    obj.increment();
    expect(obj.currentCount, 1);
  });
}
