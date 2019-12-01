import "package:test/test.dart";
import "../lib/utils.dart";
import 'dart:io';

void main() {
  test("fuel from mass", () {
    expect(requiredFuel(12), equals(2));
    expect(requiredFuel(14), equals(2));
    expect(requiredFuel(1969), equals(654));
    expect(requiredFuel(100756), equals(33583));
  });

  test("input parsing", () {
    final inp = new File('lib/input.txt');
    final values = parseInput(inp);
    expect(values.length, equals(100));
    expect(values.last, equals(111303));
  });
}
