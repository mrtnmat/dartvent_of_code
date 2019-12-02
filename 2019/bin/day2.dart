import '../lib/day2.dart' as day2;

void main() {
  final memory = day2.parseInput();
  memory[1] = 12;
  memory[2] = 2;
  final res = day2.exec(memory)[0];
  print('Part1 answer: $res');
}
