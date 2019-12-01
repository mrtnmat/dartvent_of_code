import 'dart:io';
import '../lib/day1.dart';

void main(List<String> args) {
  parseFilePath('lib/input/day1.txt')
      .fold(0, (prev, elem) => prev + requiredFuel(elem))
      .then((v) => print('Part 1: $v'));
  parseFilePath('lib/input/day1.txt')
      .fold(0, (prev, elem) => prev + requiredFuel2(elem))
      .then((v) => print('Part 2: $v'));
}
