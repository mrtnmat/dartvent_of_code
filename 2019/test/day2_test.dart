import 'dart:collection';
import 'dart:math';
import '../lib/day2.dart' as day2;
import 'package:test/test.dart';
 
var rnd = Random();

void main() {
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
  test('exec function', () {
    var memory = new HashMap();
    memory[0] = 1;
    memory[1] = 0;
    memory[2] = 0;
    memory[3] = 0;
    memory[4] = 99;
    memory = day2.exec(memory);
    expect(memory[0], equals(2));
  });
}
