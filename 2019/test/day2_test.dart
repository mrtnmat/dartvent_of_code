import 'dart:collection';
import 'dart:math';
import '../lib/day2.dart' as day2;
import 'package:test/test.dart';

var rnd = Random();

void main() {
  test('', () {});
  test('testing opcode 1', () {
    final val1 = rnd.nextInt(100);
    final val2 = rnd.nextInt(100);
    var memory = new HashMap();
    memory[0] = 1;
    memory[1] = 10;
    memory[2] = 20;
    memory[3] = 30;
    memory[10] = val1;
    memory[20] = val2;
    memory = day2.opcode1(memory, 0);
    expect(memory[30], equals(val1 + val2));
  });
  test('testing opcode 2', () {
    final val1 = rnd.nextInt(100);
    final val2 = rnd.nextInt(100);
    var memory = new HashMap();
    memory[0] = 2;
    memory[1] = 10;
    memory[2] = 20;
    memory[3] = 30;
    memory[10] = val1;
    memory[20] = val2;
    memory = day2.opcode2(memory, 0);
    expect(memory[30], equals(val1 * val2));
  });
  group('exec function', () {
    test('exec1', () {
      var memory = new HashMap();
      memory[0] = 1;
      memory[1] = 0;
      memory[2] = 0;
      memory[3] = 0;
      memory[4] = 99;
      memory = day2.exec(memory);
      expect(memory[0], equals(2));
    });
    test('exec2', () {
      var memory = new HashMap();
      memory[0] = 2;
      memory[1] = 3;
      memory[2] = 0;
      memory[3] = 3;
      memory[4] = 99;
      memory = day2.exec(memory);
      expect(memory[3], equals(6));
    });
    test('exec3', () {
      var memory = new HashMap();
      memory[0] = 2;
      memory[1] = 4;
      memory[2] = 4;
      memory[3] = 5;
      memory[4] = 99;
      memory[5] = 0;
      memory = day2.exec(memory);
      expect(memory[5], equals(9801));
    });
    test('exec3', () {
      var memory = new HashMap();
      memory[0] = 1;
      memory[1] = 1;
      memory[2] = 1;
      memory[3] = 4;
      memory[4] = 99;
      memory[5] = 5;
      memory[6] = 6;
      memory[7] = 0;
      memory[8] = 99;
      memory = day2.exec(memory);
      expect(memory[0], equals(30));
      expect(memory[4], equals(2));
    });
  });
  group('parser', () {
    test('', () {
      final memory = day2.parseInput();
      expect(memory[3], equals(3));
      expect(memory[6], equals(2));
      expect(memory[127], equals(14));
    });
  });
}
