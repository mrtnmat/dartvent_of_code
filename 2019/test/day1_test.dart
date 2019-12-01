import 'dart:io';
import 'dart:async';
import "../lib/day1.dart";
import "package:test/test.dart";

void main() {
  test("fuel from mass", () {
    expect(requiredFuel(12), equals(2));
    expect(requiredFuel(14), equals(2));
    expect(requiredFuel(1969), equals(654));
    expect(requiredFuel(100756), equals(33583));
  });

  test('input stream', () async {
    final stream = parseFilePath('lib/input/day1.txt');
    await stream.last.then((v) {
      expect(v, equals(111303));
    });
  });

  test('part2 mass -> fuel calculations', () {
    expect(requiredFuel2(14), equals(2));
    expect(requiredFuel2(1969), equals(966));
    expect(requiredFuel2(100756), equals(50346));
  });
}
